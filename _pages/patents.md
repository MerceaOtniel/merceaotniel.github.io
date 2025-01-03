---
layout: page
permalink: /patents/
title: Patents
description: #My patents listed by categories in reversed chronological order
nav: true
nav_order: 3
---

<!-- _pages/patents.md -->

{% include bib_search.liquid %}

<!-- Patent Feature -->
<div class="publications">
  {% bibliography --query @*[type=patent]* %}
</div>
