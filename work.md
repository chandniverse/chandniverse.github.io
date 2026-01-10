---
layout: default
title: Work
description: Selected projects in product design, research, and strategy.
permalink: /work/
---

<section class="hero">
  <div class="container">
    <h1 class="hero-title animate-in">{{ page.title }}</h1>
    <p class="hero-subtitle animate-in animate-delay-1">{{ page.description }}</p>
  </div>
</section>

<section class="section">
  <div class="container">
    <div class="grid grid--2">
      {% for project in site.projects %}
      <div class="animate-in animate-delay-{{ forloop.index | modulo: 4 | plus: 1 }}">
        {% include project-card.html 
           title=project.title
           description=project.excerpt
           tags=project.tags
           reading_time=project.reading_time
           image=project.image
           gradient=project.gradient
           url=project.url
        %}
      </div>
      {% endfor %}
    </div>
  </div>
</section>
