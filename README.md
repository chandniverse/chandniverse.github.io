# Chandniverse

Personal website and archive of HCI work, writing, courses and talks.

## Quick Start

### Local Development

1. Install Ruby (3.2+) and Bundler
2. Clone this repo
3. Install dependencies:
   ```bash
   bundle install
   ```
4. Start the dev server:
   ```bash
   bundle exec jekyll serve
   ```
5. Open http://localhost:4000

### Adding Content

**Projects** go in `_projects/`:
```yaml
---
title: "Project Title"
excerpt: "Short description"
tags:
  - Design
  - Research
reading_time: "10 min"
image: /assets/images/projects/cover.jpg
gradient: yellow  # yellow, blue, purple, green, peach
---

Your content here...
```

**Blog posts** go in `_posts/` with filename `YYYY-MM-DD-title.md`:
```yaml
---
title: "Post Title"
date: 2024-01-15
excerpt: "Short description"
tags:
  - Topic
reading_time: "5 min"
---

Your content here...
```

### Fonts

This site uses:
- **EB Garamond** (Google Fonts) - for display headings
- **Satoshi** (Fontshare) - for body text

Download Satoshi from [Fontshare](https://www.fontshare.com/fonts/satoshi) and place the woff/woff2 files in `assets/fonts/`.

### Custom Domains

The site is configured to serve from:
- **Primary:** chandni.xyz
- **Alternate:** chandninaidu.com

DNS configuration required at your registrar:
```
A     @     185.199.108.153
A     @     185.199.109.153
A     @     185.199.110.153
A     @     185.199.111.153
CNAME www   chandniverse.github.io
```

## Design System

Colors:
- Accent Pink: `#F745A4`
- Accent Orange: `#FF911F`
- Accent Teal: `#366E91`

Card gradients available: yellow, blue, purple, green, peach

## License

Content © Chandni Naidu Deadwyler. Code MIT.
