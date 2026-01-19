# Chandniverse

A research website built with [Quarto](https://quarto.org/) featuring interactive data visualizations.

🌐 **Live site:** [https://chandniverse.github.io](https://chandniverse.github.io)

## Features

- 📊 Interactive visualizations with ggplot2 + plotly
- 📚 Academic citations and references
- 🔄 Fully reproducible analyses
- 🚀 Automated deployment via GitHub Actions

## Local Development

### Prerequisites

- [R](https://www.r-project.org/) (≥ 4.0)
- [RStudio](https://posit.co/download/rstudio-desktop/) (recommended)
- [Quarto](https://quarto.org/docs/get-started/)

### Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/chandniverse/chandniverse.github.io.git
   ```

2. Open `chandniverse.github.io.Rproj` in RStudio

3. Install required R packages:
   ```r
   install.packages(c("ggplot2", "plotly", "dplyr", "knitr", "rmarkdown"))
   ```

4. Preview the site:
   ```bash
   quarto preview
   ```

### Building

To render the site locally:

```bash
quarto render
```

Output will be in the `docs/` folder.

## Workflow

1. **Edit** `.qmd` files in RStudio
2. **Preview** with `quarto preview`
3. **Commit** changes via GitHub Desktop
4. **Push** to main branch
5. GitHub Actions automatically builds and deploys

## Project Structure

```
chandniverse.github.io/
├── _quarto.yml              # Site configuration
├── chandniverse.github.io.Rproj  # RStudio project
├── index.qmd                # Homepage
├── analysis.qmd             # Analysis with interactive plots
├── data.qmd                 # Data & reproducibility
├── about.qmd                # About page
├── references.bib           # Bibliography
├── apa.csl                  # Citation style
├── data/                    # Datasets
├── scripts/                 # R scripts
├── docs/                    # Rendered site (auto-generated)
└── .github/workflows/       # GitHub Actions
```

## License

MIT License - feel free to use this as a template for your own site!
