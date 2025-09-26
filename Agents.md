# ChatGPT Codex Agent Guide

## Project Snapshot
- Static academic/personal site built on the [al-folio](https://github.com/alshedivat/al-folio) Jekyll theme.
- Primary languages: Liquid templates, Markdown content, SCSS, and Ruby-based plugins.
- Live site root config lives in `_config.yml`; `_site/` contains generated output and should never be edited manually.
- Custom content organized in collection folders (`_pages`, `_posts`, `_news`, `_projects`) plus data-driven YAML files in `_data/` and bibliographic sources in `_bibliography/`.

## Toolchain & Dependencies
- Ruby + Bundler (Jekyll 4.4.1 and numerous plugins defined in `Gemfile`).
- Node.js tooling used mainly for PurgeCSS post-processing and Prettier formatting (`package.json`).
- Docker workflow available (`Dockerfile`, `docker-compose*.yml`) targeting port 8080.
- Shell helpers in `bin/` (`cibuild`, `deploy`, `entry_point.sh`) encapsulate common tasks.
- Python requirement (`nbconvert`) supports notebook-to-html conversion inside the Docker image.

## Repository Layout Highlights
- `_config.yml`: Global site settings (metadata, theme toggles, collections, analytics, search, etc.). Restart the dev server after changing it.
- `_pages/`: Individual site pages (Markdown with front matter). `nav`, `dropdown`, and `nav_order` control navigation behavior.
- `_posts/`: Blog posts (dated filenames). Use standard Jekyll front matter plus optional `redirect`, `description`, or `math` flags.
- `_news/`, `_projects/`: Collections surfaced on the homepage/sections. Follow the existing filename and front matter conventions.
- `_data/`: YAML datasets for CV entries, repositories, venue abbreviations, socials, etc. Update here to feed components automatically.
- `_bibliography/papers.bib`: BibTeX references consumed by `jekyll-scholar`.
- `_includes/`, `_layouts/`: Liquid building blocks for page structure; update responsibly, keeping compatibility with the theme.
- `_sass/` + `assets/css/main.scss`: Styling entry point importing theme partials. Customize variables in `_sass/_variables.scss` to tweak colors, spacing, typography.
- `assets/`: All static assets (images, fonts, JS modules, PDFs, notebooks). Keep large binaries in relevant subfolders.
- `_plugins/`: Custom Ruby helpers (cache busting, citation fetching, accent removal, etc.). Touch with care—each file is loaded at build time.
- `_scripts/search.liquid.js`: Generates the Ninja Keys search index at build; changes require a new build.
- `lighthouse_results/`: Stored audit artifacts; safe to ignore during content work.
- `node_modules/`, `vendor/`, `_site/`: Generated directories—avoid manual edits or commits unless workflow demands it.

## Local Development
1. **Install Ruby gems**
   ```bash
   bundle install
   ```
2. **Install Node deps (for PurgeCSS/Prettier)**
   ```bash
   npm install
   ```
3. **Serve locally**
   ```bash
   bundle exec jekyll serve --watch --livereload --trace
   ```
   - Serves on `http://localhost:4000` by default. The Docker setup (`docker-compose up jekyll`) runs the same server on port 8080 with live reload.
   - If `_config.yml` changes, restart the server (the `bin/entry_point.sh` handles this automatically inside Docker using `inotifywait`).

## Build, Preview, Deploy
- **Production build**: `bundle exec jekyll build` or `bin/cibuild` (outputs to `_site/`).
- **CSS pruning for deploy**: run `purgecss -c purgecss.config.js` after a production build (handled automatically inside `bin/deploy`).
- **Deploy to GitHub Pages**: `bin/deploy` (wipes and rebuilds on a `gh-pages` branch, then force-pushes unless `--no-push` is set). Requires a clean git status and confirmation prompt.

## Content Authoring Guidelines
- Use Markdown with YAML front matter; copy existing examples for structure and required fields.
- For navigation:
  - Set `nav: true` in `_pages/*` to surface pages in the navbar; `dropdown: true` pages expect a `children` array.
  - Control ordering with `nav_order` (integer) and use descriptive `title`/`description` fields.
- Announcements in `_news/` appear on the homepage; limit length and include front matter `date`, `icon`, and `description`.
- Blog posts in `_posts/` support math, redirects, and hero images via front matter fields.
- Projects/pages often embed data from `_data/*.yml`; update both when adding new entries.
- Bibliography updates go through `_bibliography/papers.bib`; run a build so `jekyll-scholar` regenerates citation lists.

## Styling & Theming
- Theme variables live in `_sass/_variables.scss`; override colors, fonts, spacing there before editing base styles.
- Add or adjust component styling in the partials under `_sass/`; keep nesting shallow and leverage SCSS variables/mixins.
- Custom JS (if needed) belongs in `assets/js/` and should be referenced via `_includes/scripts.html` or page-specific includes.
- Asset-pipeline friendly filenames (no spaces, lowercase, hyphen-separated) help keep URLs predictable.

## Automation & Integrations
- Custom plugins (`_plugins/`) extend Jekyll for external posts, cache busting, citation counts, etc. Each runs during build—verify the Ruby logic when altering behavior.
- Search index powered by `ninja-keys` (`_scripts/search.liquid.js`); ensure new collections have appropriate metadata for the index.
- Prettier (Liquid plugin) can format templates:
  ```bash
  npx prettier --write "**/*.{liquid,html,md,scss,js}"
  ```
- `nbconvert` allows `.ipynb` notebooks in `assets/jupyter/` to be rendered as HTML/Markdown snippets.

## Validation & QA Tips
- Always run `bundle exec jekyll build` before opening a PR to catch Liquid or front matter errors.
- For CSS/JS changes, inspect the generated HTML in `_site/` or run the live server; watch console logs for layout or search issues.
- Optional: run Lighthouse against `http://localhost:4000` and compare with files in `lighthouse_results/`.
- Check for broken links or images after structural updates—al-folio templates rely on correct relative URLs via `relative_url` filters.

## Common Pitfalls
- `_config.yml` edits require a full rebuild; the watch mode doesn’t pick up YAML changes reliably.
- `bin/deploy` force-pushes to `gh-pages`; ensure GitHub Actions or manual deploy expectations align before running.
- PurgeCSS needs a fresh `_site/` output; run it only after `jekyll build` to avoid stripping required classes.
- Avoid editing generated folders (`_site`, `node_modules`, `vendor`)—they are recreated frequently.
- Custom plugins execute in production builds; syntax errors there break the entire build. Add guard clauses and rescue blocks when modifying them.

## How Codex Can Help
- **Content updates**: edit Markdown in `_pages/`, `_posts/`, or `_news/`, ensuring front matter stays valid.
- **Design tweaks**: adjust SCSS in `_sass/` or JS in `assets/js/` while respecting theme structure.
- **Automation**: script repetitive edits across Markdown/YAML with search-and-replace or generation utilities.
- **Diagnostics**: review build logs, check plugin behavior, or trace search/index issues.
- When unsure, inspect live examples under `readme_preview/` to match the intended look and feel.

