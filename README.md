# Chandniverse

Minimal portfolio site. All content lives in `index.md`.

## Structure

```
index.md          ← Your main page (edit this!)
_posts/           ← Blog posts go here
assets/fonts/     ← Add Satoshi font files
```

## Edit your content

Just edit `index.md` — it's pure Markdown.

## Add a blog post

Create a file in `_posts/` named `YYYY-MM-DD-your-title.md`:

```markdown
---
layout: post
title: "Your Post Title"
date: 2024-01-15
description: "Brief description for SEO"
reading_time: "5 min read"
---

Your content here...
```

Posts will be available at `/blog/your-title/`

## Fonts

Download [Satoshi](https://www.fontshare.com/fonts/satoshi) and add to `assets/fonts/`:
- Satoshi-Regular.woff2
- Satoshi-Medium.woff2
- Satoshi-Bold.woff2

## Local dev

```bash
bundle install
bundle exec jekyll serve
```

## Deploy

Push to GitHub → Settings → Pages → Source: GitHub Actions
