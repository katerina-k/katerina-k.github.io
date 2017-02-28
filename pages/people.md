---
title: People
layout: page
class: participants
---

{% for participant in site.participants %}
{% unless participant.past-member %}
<div class="row participant">
    <section class="2u small-hidden profile-pic">
        <img src="{{ site.baseurl }}/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="10u">
        <p><strong>{{ participant.given }} {{ participant.last }}</strong>{% if participant.clima %}, CLIMA {{ participant.clima }}{% endif %}
        <br>
        {{ participant.about }}
        </p>
        <ul id="member-contact">
        {% if participant.office %}
            <li class="member-office"><i class="door-icon"><img src="/assets/images/simpler_building.png" class="door-icon"></i>{{ participant.office }}</li>
        {% endif %}
        {% if participant.email %}
            <li class="member-email"><a href="mailto: {{ participant.email }}" ><i class="fa fa-envelope"></i>{{ participant.email }}</a></li>
        {% endif %}
        {% if participant.web %}
            <li class="member-web"><a href="{{ participant.web }}" target="_blank" ><i class="fa fa-globe"></i>{{ participant.web }}</a></li>
        {% endif %}
        </ul>
    </section>
</div>
{% if participant.last == "Tuana" %}  
<hr class="participants">
{% else %}
{% unless forloop.last %}
<hr class="participants">
{% endunless %}
{% endif %}
{% endunless %}
{% if participant.past-member %}
{% assign past = True %}
{% endif %}
{% endfor %}
<br>
<h3>Past Members</h3>

{% for participant in site.participants %}
{% if participant.past-member %}
<div class="row participant">
    <section class="2u small-hidden profile-pic">
        <img src="{{ site.baseurl }}/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="10u">
        <p><strong>{{ participant.given }} {{ participant.last }}</strong>{% if participant.clima %}, CLIMA {{ participant.clima }}{% endif %}
        <br>
        {{ participant.about }}
        </p>
        <ul id="member-contact">
        {% if participant.office %}
            <li class="member-office"><i class="door-icon"><img src="/assets/images/simpler_building.png" class="door-icon"></i>{{ participant.office }}</li>
        {% endif %}
        {% if participant.email %}
            <li class="member-email"><a href="mailto: {{ participant.email }}" ><i class="fa fa-envelope"></i>{{ participant.email }}</a></li>
        {% endif %}
        {% if participant.web %}
            <li class="member-web"><a href="{{ participant.web }}" target="_blank" ><i class="fa fa-globe"></i>{{ participant.web }}</a></li>
        {% endif %}
        </ul>
    </section>
</div>
{% if participant.last == "Tuana" %}  
<hr class="participants">
{% else %}
{% unless forloop.last %}
<hr class="participants">
{% endunless %}
{% endif %}
{% endif %}
{% endfor %}