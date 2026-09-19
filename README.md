# ryumingi.github.io

Personal site and blog. Built with [Jekyll](https://jekyllrb.com/) on top of the [Minima](https://github.com/jekyll/minima) theme (heavily overridden for a custom essay-style layout), hosted on GitHub Pages.

Note: this requires Ruby >= 3.0 (the `github-pages` gem's dependencies won't install on older Rubies, e.g. macOS's system Ruby).

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://localhost:4000`.

## Structure

| Path | Purpose |
|------|---------|
| `_posts/` | Blog posts (`YYYY-MM-DD-title.md`), grouped into `dev`/`travel` categories |
| `_layouts/` | Custom page/post/home layouts (override Minima's defaults) |
| `_includes/` | Header, footer, head, and reading-time partials |
| `assets/main.scss` | Site stylesheet (typography, layout, light/dark mode) |
| `archive.html` | Chronological archive of all posts, grouped by year |
| `tags.html` | Posts grouped by category |
| `links.md` | Bookmarks and links |
| `reading.md` | Reading notes and references |
| `_config.yml` | Site configuration |
