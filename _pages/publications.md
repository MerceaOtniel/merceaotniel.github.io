---
layout: page
permalink: /publications/
title: Publications
description: Equal contribution denoted by *
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">
  {% bibliography --query @*[type!=patent]* %}
</div>
