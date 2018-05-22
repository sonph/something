# sonph.github.io

## Build
Dependencies:
```
make install
```

Development flow:
```
tmux new -s sonphgithubio
make dev
```

## Notes
- Use `<img class="no-shadow" alt="..." src="/assets/images/...png">` for mac
window screenshots that already have shadow.

## File structure
- `_data`: site data
- `_includes`: html fragments to be included
- `_layouts`: layouts (default, post, etc.)
- `_posts`: posts contents in markdown format
- `_pug`: pug templates generated to html files in root (`{index,posts.projects}.html`)
  - `_pug/layouts`: pug templates generated to html files in  `_layouts`
- `_site`: generated site ready to serve (should not be committed as GHPages will automatically generate)
- `assets`: css, font-awesome, images, javascript
  - `css/app.sass` is generated to css by jekyll
- `r`: redirects e.g. `sonpham.me/r/codelab`
- `utils`: dev utils
