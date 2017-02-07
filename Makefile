start:
	tmux split-window -h bundle exec jekyll serve
	./utils/pug.sh &
	sleep 5
	python -m webbrowser -t "http://localhost:4000"

install:
	bundle install
	npm install -g pug-cli

TITLE=new-post
new-post:
	$(eval DATE=$(shell date '+%Y-%m-%d'))
	$(eval NEW_FILE=_posts/$(DATE)-$(TITLE).md)
	cp template.md $(NEW_FILE)
	@echo 'Created file $(NEW_FILE)'
