---
layout: single
permalink: /fixedexecution/
author_profile: true

---


**"Fixed Execution Non-Preemptive (FENP) algorithm"**

A second project I worked on in DSPLabs Timisoara consisted of developing an interface to implement the "Fixed Execution Non-Preemptive" (FENP) algorithm developed by "DSPLabs Timisoara".

Abstract

"In the fields like automotive, robotic systems, telecomunications and cyber physical systems in general, the use of general purpose scheduling algorithms is ineffectual. Special scheduling algorithms have been developed for this purpose. Such an algorithm is Fixed Execution Non-Preemptive (FENP). FENP is a real-time table driven scheduling algorithm developed at DSPLabs Timisoara. In the present this algorithm is mainly used, on embedded platforms, for scheduling tasks for signal acquisition, communications in sensor networks and mobility in robotic systems.
The scope of this project is to implement the FENP algorithm in Linux usind the Litmus patch."

My work consisted of finding if Litmus Patch was suitable for this task, implementing a template for FENP, and installing Litmus Patch on a Raspberry Pi 3, which was featured **[in this tutorial](https://www.litmus-rt.org/doc/litmus-rt-on-raspbian.pdf)**

**Technologies: Shell script, C, KernelShark.**





