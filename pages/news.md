---
layout: page-fullwidth
title: "News"
permalink: "/news/"
header:
---
<br>
<div>
	{% for story in site.news reversed%}
        <div class="medium-4 columns">
            <img src="/news/{{ story.date | date: '%Y-%m-%d' }}.jpg" width="400px">        
            <div style="color: #8A8A8A">{{ story.date | date: "%-d %B %Y" }}</div>
            <p><strong>{{ story.title }}</strong></p>
            <p>
              {{ story.content | strip_html }}
              {% if story.web %}
              <a href="{{ story.web['url'] }}" {% if story.web['external'] == "true" %}target="_blank"{% endif %} style="white-space: nowrap;">&lsaquo;&lsaquo;read more&rsaquo;&rsaquo;</a>{% endif %}
            </p>
        </div>
	{% endfor %}
</div>
