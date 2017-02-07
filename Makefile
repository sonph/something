start:
	tmux split-window -h bundle exec jekyll serve
	./utils/pug.sh &
	sleep 5
	python -m webbrowser -t "http://localhost:4000"

install:
	bundle install
	npm install -g pug-cli
