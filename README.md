# sonph.github.io

## Build
Dependencies:
```
which ruby
[sudo] gem install --file Gemfile

which node
[sudo] npm install -g pug-cli # formerly jade
```

Development flow:
1. create a tmux window
2. run `./utils/pug.sh` in a pane
3. run `jekyll serve` in a pane
4. run `vim` in a pane
5. go to [localhost:4000](http://localhost:4000)

## Notes
- Use `<img class="no-shadow" alt="..." src="/assets/images/...png">` for mac
window screenshots that already have shadow.
