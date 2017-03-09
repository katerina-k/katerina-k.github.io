---
layout: page-fullwidth
title: "News"
permalink: "/news/"
header:
  image_fullwidth: mt-jefferson.jpg
---
<br>
<div>
	{% for story in site.news reversed%}
        <div class="medium-4 columns">
             <a href="{{ story.web['url'] }}" {% if story.web['external'] == "true" %}target="_blank" {% endif %}> <img src="/news/{{ story.date | date: '%Y-%m-%d' }}.jpg" width="400px"> </a>        
            <div class="date">{{ story.date | date: "%-d %B %Y" }}</div>
            <p><strong>{{ story.title }}</strong></p>
            <p>
              {{ story.content | strip_html }}
              {% if story.web %}
              <a href="{{ story.web['url'] }}" {% if story.web['external'] == "true" %}target="_blank" {% endif %} style="white-space: nowrap;">&lsaquo;&lsaquo;read more&rsaquo;&rsaquo;</a>{% endif %}
            </p>
        </div>
	{% endfor %}
</div>
