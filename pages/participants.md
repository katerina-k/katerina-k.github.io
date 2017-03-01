---
title: Participants
layout: page-fullwidth
class: participants
permalink: "/participants/"
---
<script src="https://use.fontawesome.com/af230eaeb5.js"></script>
<br>
{% for participant in site.participants %}
<div class="row participant">
    <section class="medium-2 columns small-hidden">
        <img src="/participants/{{ participant.pic }}" alt="{{ participant.given }} {{ participant.last }}" class="participants">
    </section>
    <section class="medium-10 columns">
        <p><strong><u>{{ participant.given }} {{ participant.last }}</u></strong>{% if participant.pches %}, PCHES {{ participant.pches }}{% endif %}
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

{% unless forloop.last %}
<hr class="participants">
{% endunless %}
{% endfor %}
