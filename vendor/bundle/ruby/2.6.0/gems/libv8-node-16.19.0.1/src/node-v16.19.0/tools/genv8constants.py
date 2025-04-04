#!/usr/bin/env python2

#
# genv8constants.py output_file libv8_base.a
#
# Emits v8dbg constants stored in libv8_base.a in a format suitable for the V8
# ustack helper.
#

from __future__ import print_function
import re
import subprocess
import sys
import errno

if len(sys.argv) != 3:
  print("Usage: genv8constants.py outfile libv8_base.a")
  sys.exit(2)

outfile = open(sys.argv[1], 'w')
try:
  pipe = subprocess.Popen([ 'objdump', '-z', '-D', sys.argv[2] ],
      bufsize=-1, stdout=subprocess.PIPE).stdout
except OSError as e:
  if e.errno == errno.ENOENT:
    print('''
      Node.js compile error: could not find objdump

      Check that GNU binutils are installed and included in PATH
      ''')
  else:
    print('problem running objdump: ', e.strerror)

  sys.exit()

pattern = re.compile('([0-9a-fA-F]{8}|[0-9a-fA-F]{16}) <(.*)>:')
v8dbg = re.compile('^v8dbg.*$')
numpattern = re.compile('^[0-9a-fA-F]{2} $')
octets = 4

outfile.write("""
/*
 * File automatically generated by genv8constants. Do not edit.
 *
 * The following offsets are dynamically from libv8_base.a.  See src/v8ustack.d
 * for details on how these values are used.
 */

#ifndef V8_CONSTANTS_H
#define V8_CONSTANTS_H

""")

curr_sym = None
curr_val = 0
curr_octet = 0

def out_reset():
  global curr_sym, curr_val, curr_octet
  curr_sym = None
  curr_val = 0
  curr_octet = 0

def out_define():
  global curr_sym, curr_val, curr_octet, outfile, octets
  if curr_sym != None:
    wrapped_val = curr_val & 0xffffffff
    if curr_val & 0x80000000 != 0:
      wrapped_val = 0x100000000 - wrapped_val
      outfile.write("#define %s -0x%x\n" % (curr_sym.upper(), wrapped_val))
    else:
      outfile.write("#define %s 0x%x\n" % (curr_sym.upper(), wrapped_val))
  out_reset()

for line in pipe:
  line = line.decode('utf-8')
  if curr_sym != None:
    #
    # This bit of code has nasty knowledge of the objdump text output
    # format, but this is the most obvious robust approach.  We could almost
    # rely on looking at numbered fields, but some instructions look very
    # much like hex numbers (e.g., "adc"), and we don't want to risk picking
    # those up by mistake, so we look at character-based columns instead.
    #
    for i in range(0, 3):
      # 6-character margin, 2-characters + 1 space for each field
      idx = 6 + i * 3
      octetstr = line[idx:idx+3]
      if curr_octet > octets:
        break

      if not numpattern.match(octetstr):
        break

      curr_val += int('0x%s' % octetstr, 16) << (curr_octet * 8)
      curr_octet += 1

  match = pattern.match(line)
  if match is None:
    continue

  # Print previous symbol
  out_define()

  v8match = v8dbg.match(match.group(2))
  if v8match != None:
    out_reset()
    curr_sym = match.group(2)

# Print last symbol
out_define()

outfile.write("""

#endif /* V8_CONSTANTS_H */
""")

outfile.close()
