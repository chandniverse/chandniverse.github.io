---
layout: default
title: Writing
description: Essays, thoughts, and explorations.
permalink: /writing/
---

<section class="hero">
  <div class="container">
    <h1 class="hero-title animate-in">{{ page.title }}</h1>
    <p class="hero-subtitle animate-in animate-delay-1">{{ page.description }}</p>
  </div>
</section>

<section class="section">
  <div class="container">
    {% for post in site.posts %}
    <a href="{{ post.url | relative_url }}" class="post-card animate-in animate-delay-{{ forloop.index | modulo: 4 | plus: 1 }}">
      <p class="post-card__date">{{ post.date | date: "%B %d, %Y" }}</p>
      <h3 class="post-card__title">{{ post.title }}</h3>
      <p class="post-card__excerpt">{{ post.excerpt | strip_html | truncate: 200 }}</p>
    </a>
    {% endfor %}
    
    {% if site.posts.size == 0 %}
    <p class="text-muted">No posts yet. Check back soon!</p>
    {% endif %}
  </div>
</section>
