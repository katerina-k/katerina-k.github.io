---
permalink: /sitemap/
layout: page
title: "Site Map"
header: no
sitemap: "false"
---

{% capture pages %}{% for page in site.pages %}{% unless page.sitemap %}{{ page.title | upcase }}#{{ page.url }}{% unless forloop.first %}|{% endunless %}{% endunless %}{% endfor %}{% endcapture %}
{% assign sortedpages = pages | split: '|' | sort %}
{% for page in sortedpages %}
{% assign pageitems = page | split: '#' %}
<a href="{{ site.production_url }}{{ pageitems[1] }}">{{ pageitems[0] }}</a>
{% endfor %}
