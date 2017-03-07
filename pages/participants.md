---
title: Participants
layout: page-fullwidth
class: participants
permalink: "/participants/"
header:
  image_fullwidth: golden-gate.jpg
---
<br>
### Directors
<hr>
{% for participant in site.participants %}
{% if participant.tag contains "director" %}
<div class="row participant">
    <section class="medium-2 columns small-hidden">
        <img src="/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="medium-10 columns">
        <p><strong><u>{{ participant.given }} {{ participant.last }}</u></strong>        <br>
       {{ participant.about }}
        </p>
       {% if participant.email %}
            <div class="member-email"><a href="mailto: {{ participant.email }}" ><i class="fa fa-envelope"></i>&nbsp;{{ participant.email }}</a></div>
        {% endif %}
        {% if participant.web %}
            <div class="member-web"><a href="{{ participant.web }}" target="_blank" ><i class="fa fa-globe"></i>&nbsp;{{ participant.web }}</a></div>
        {% endif %}
    </section>
</div>

{% unless participant.last == "Weyant" %}
<hr>
{% endunless %}

{% endif %}
{% endfor %}


### Managing Director
<hr>
{% for participant in site.participants %}
{% if participant.tag contains "managing-dir" %}
<div class="row participant">
    <section class="medium-2 columns small-hidden">
        <img src="/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="medium-10 columns">
        <p><strong><u>{{ participant.given }} {{ participant.last }}</u></strong>
        <br>
       {{ participant.about }}
        </p>
       {% if participant.email %}
            <div class="member-email"><a href="mailto: {{ participant.email }}" ><i class="fa fa-envelope"></i>&nbsp;{{ participant.email }}</a></div>
        {% endif %}
        {% if participant.web %}
            <div class="member-web"><a href="{{ participant.web }}" target="_blank" ><i class="fa fa-globe"></i>&nbsp;{{ participant.web }}</a></div>
        {% endif %}
    </section>
</div>

{% endif %}
{% endfor %}

### Senior Personnel
<hr>
{% for participant in site.participants %}
{% if participant.tag contains "senior-per" %}
<div class="row participant">
    <section class="medium-2 columns small-hidden">
        <img src="/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="medium-10 columns">
        <p><strong><u>{{ participant.given }} {{ participant.last }}</u></strong>
        <br>
       {{ participant.about }}
        </p>
       {% if participant.email %}
            <div class="member-email"><a href="mailto: {{ participant.email }}" ><i class="fa fa-envelope"></i>&nbsp;{{ participant.email }}</a></div>
        {% endif %}
        {% if participant.web %}
            <div class="member-web"><a href="{{ participant.web }}" target="_blank" ><i class="fa fa-globe"></i>&nbsp;{{ participant.web }}</a></div>
        {% endif %}
    </section>
</div>

{% unless participant.last == "Wrenn" %}
<hr>
{% endunless %}

{% endif %}
{% endfor %}


### Students, Postdocs, and Staff Scientists
<hr>
{% for participant in site.participants %}
{% if participant.tag contains "postdoc" or participant.tag contains "student" or participant.tag contains "scientist" %}
<div class="row participant">
    <section class="medium-2 columns small-hidden">
        <img src="/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="medium-10 columns">
        <p><strong><u>{{ participant.given }} {{ participant.last }}</u></strong>
        <br>
       {{ participant.about }}
        </p>
       {% if participant.email %}
            <div class="member-email"><a href="mailto: {{ participant.email }}" ><i class="fa fa-envelope"></i>&nbsp;{{ participant.email }}</a></div>
        {% endif %}
        {% if participant.web %}
            <div class="member-web"><a href="{{ participant.web }}" target="_blank" ><i class="fa fa-globe"></i>&nbsp;{{ participant.web }}</a></div>
        {% endif %}
    </section>
</div>

{% unless participant.last == "Spence" %}
<hr>
{% endunless %}

{% endif %}
{% endfor %}

### Staff
<hr>
{% for participant in site.participants %}
{% if participant.tag contains "staff" %}
<div class="row participant">
    <section class="medium-2 columns small-hidden">
        <img src="/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="medium-10 columns">
        <p><strong><u>{{ participant.given }} {{ participant.last }}</u></strong>
        <br>
       {{ participant.about }}
        </p>
       {% if participant.email %}
            <div class="member-email"><a href="mailto: {{ participant.email }}" ><i class="fa fa-envelope"></i>&nbsp;{{ participant.email }}</a></div>
        {% endif %}
        {% if participant.web %}
            <div class="member-web"><a href="{{ participant.web }}" target="_blank" ><i class="fa fa-globe"></i>&nbsp;{{ participant.web }}</a></div>
        {% endif %}
    </section>
</div>

{% endif %}
{% endfor %}