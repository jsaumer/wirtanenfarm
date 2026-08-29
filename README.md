# wirtanenfarm.org — Hugo site

Static Hugo port of the WordPress site, matching the Hemingway theme 1:1
(same CSS, fonts, and images at their original /wp-content/ paths).

## Editing
- Page content: `content/*.html` (raw HTML bodies extracted from WordPress).
- Menu, title, tagline: `hugo.toml`.
- Layout/header/footer: `layouts/_default/baseof.html` (includes the
  rotating-header script and the Rybbit analytics tag).
- Images: `static/wp-content/uploads/` — e.g. drop next year's poster in
  `static/wp-content/uploads/<year>/<month>/` and update the link in
  `content/_index.html`.

## Build & deploy
    ./deploy.sh
Builds with Hugo and rsyncs `public/` to `/var/www/wirtanenfarm-static`
(currently served as a preview on port 8081 by
`/etc/nginx/sites-available/wirtanenfarm-hugo-preview`).

## Going live
Point the main nginx site's root at `/var/www/wirtanenfarm-static` (or move
this server block to port 80) — Pangolin/Cloudflare need no changes.
WordPress stays untouched at /var/www/html/wordpress for instant rollback.

Theme CSS © Anders Norén (Hemingway, GPL). Drop Shadow Boxes CSS GPL.
