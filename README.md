# wirtanenfarm.org

The website of the Friends of the Wirtanen Pioneer Farm. The pages are plain
HTML files in `static/`; Hugo only copies them into `public/`.

## Pages
- `static/index.html`: the homepage (farmstead map, events, Eli's story, news,
  savusauna, getting there).
- `static/savusauna/index.html`: Norm and Harold's restoration notes.
- `static/contact-us/index.html`: contact details.
- `static/404.html`: the "page not found" page.
- `static/sitemap.xml`: add a line when a page is added.

## Editing
- Events: the `EVENTS` block near the end of `static/index.html`. Set the dates
  each year; the festival works out its own next date.
- News: the `NEWS` block below it. Items show newest first by date.
- Farmstead stops: the `S` list in the map script.
- Photos: `static/img/`. Give a replaced photo a new file name, because the
  CDN keeps serving the old file under the old name.
- Festival posters: `static/wp-content/uploads/<year>/<month>/`.

## Build & deploy
    ./deploy.sh
Builds with Hugo, copies `public/` to `/var/www/wirtanenfarm-static`, and
pushes committed changes to GitHub.

## Old addresses
nginx redirects the old site's pages (`/eli-wirtanen/`, `/location/`,
`/about-us/`) and the `/v2/` preview addresses to their new homes. The rules
are in `/etc/nginx/sites-available/wirtanenfarm-static`.
