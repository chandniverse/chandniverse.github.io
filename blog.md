---
layout: default
title: Blog
permalink: /blog/
---

<div class="container">
  <header class="post-header">
    <h1 class="post-title">Blog</h1>
    <p class="post-meta">Thoughts on design, research, and building products.</p>
  </header>

  {% if site.posts.size > 0 %}
  <ul class="post-list">
    {% for post in site.posts %}
    <li class="post-list__item">
      <p class="post-list__date">{{ post.date | date: "%B %d, %Y" }}</p>
      <h3 class="post-list__title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
      {% if post.excerpt %}
      <p class="post-list__excerpt">{{ post.excerpt | strip_html | truncate: 160 }}</p>
      {% endif %}
    </li>
    {% endfor %}
  </ul>
  {% else %}
  <p>No posts yet. Check back soon!</p>
  {% endif %}
</div>
