# Chandniverse Update - Scrollytelling Edition

This update adds scrollytelling capabilities to your Quarto site using the Closeread extension.

## What's New

- **Scrollytelling support**: Create immersive visual stories like The Swaddle
- **Dark theme story template**: `story.qmd` with custom styling
- **Placeholder images**: Ready to replace with your own visuals
- **Auto-install Closeread**: GitHub Actions installs the extension automatically

## Files to Add/Replace

### Replace these files:
- `_quarto.yml` - Updated site config with Stories menu
- `.github/workflows/publish.yml` - Now installs Closeread automatically
- `styles.css` - Updated main styles

### Add these new files:
- `story.qmd` - Sample scrollytelling page
- `story-styles.css` - Dark theme for stories
- `images/` folder with placeholder SVGs

## How to Use

1. **Unzip** this folder
2. **Copy all files** into your `chandniverse.github.io` folder (merge/replace when prompted)
3. **Commit and push** via GitHub Desktop
4. Wait for GitHub Actions to build (~2-3 minutes)
5. Visit your site!

## Creating Your Own Stories

1. Duplicate `story.qmd` and rename it (e.g., `my-project.qmd`)
2. Replace placeholder images in `/images` with your own
3. Edit the text and add/remove sections
4. Add the new page to `_quarto.yml` under the Stories menu

## Story Structure

```markdown
:::{.cr-section}

:::{#cr-your-image-id .sticky-col-screen}
![](images/your-image.png)
:::

Your narrative text here. @cr-your-image-id

More text as you scroll...

:::
```

## Tips

- Images should be 1920x1080 or similar widescreen ratio
- Use PNG, JPG, or SVG formats
- Keep narrative text concise - let visuals do the work
- Test locally with `quarto preview` before pushing
