---
layout: page-fullwidth
title: "Events"
permalink: "/events/"
header:
  image_fullwidth: italy-highway.jpg
---
<br>
### Upcoming Events
<hr>
{% for event in site.events %}
{% if event.featured %}

<div class ="row">	
<section class="medium-2 columns">
	<time datetime="{{ event.date }}" class="icon">
  		<em>{{ event.date | date: "%A" }}</em>
  		<strong>{{ event.date | date: "%B" }}</strong>
		<span>{{ event.date | date: "%d" }}</span>
	</time>
</section>

<section class="medium-10 columns">
	<strong>{{ event.title }}</strong> <br>
	{{ event.subtitle }} <br>
	{{ event.date | date: "%-d %B %Y" }}<br>
	<i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;{{ event.location }}<br>
	{% if event.web %}
   <a href="{{ event.web['url'] }}" {% if event.web['external'] == "true" %}target="_blank"{% endif %} style="white-space: nowrap;"><i class="fa fa-globe" aria-hidden="true"></i>&nbsp; Event Info</a>{% endif %}
</section>
</div>

{% endif %}
{% endfor %}

### Past Events
<hr>
{% for event in site.events %}
{% unless event.featured %}

<div class = "row">
<section class="medium-2 columns">
	<time datetime="{{ event.date }}" class="icon">
  		<em>{{ event.date | date: "%A" }}</em>
  		<strong>{{ event.date | date: "%B" }}</strong>
		<span>{{ event.date | date: "%d" }}</span>
	</time>
</section>

<section class="medium-9 columns">
	<strong>{{ event.title }}</strong> <br>
	{{ event.subtitle }} <br>
	{{ event.date | date: "%-d %B %Y" }}<br>
	<i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;{{ event.location }}<br>
	{% if event.web %}
   <a href="{{ event.web['url'] }}" {% if event.web['external'] == "true" %}target="_blank"{% endif %} style="white-space: nowrap;"><i class="fa fa-globe" aria-hidden="true"></i>&nbsp; Event Info</a>{% endif %}
</section>
</div>

{% endunless %}
{% endfor %}