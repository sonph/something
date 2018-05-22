$(eval LOCAL_GEM_PATH=$(HOME)/.gem/ruby/2.0.0/bin)

dev:
	tmux split-window -h "bundle exec jekyll serve; echo 'Press any key to continue'; read"
	./utils/pug.sh &
	@echo "open http://localhost:4000"

install:
	gem sources --add https://rubygems.org/
	gem install --user-install bundler
	export PATH="$(LOCAL_GEM_PATH) $$PATH" bundle install
	npm install -g pug-cli
	brew update && brew install imagemagick optipng
	echo "Important: Make sure $(LOCAL_GEM_PATH) is in the \$$PATH"

TITLE=new-post
new-post:
	$(eval DATE=$(shell date '+%Y-%m-%d'))
	$(eval NEW_FILE=_posts/$(DATE)-$(TITLE).md)
	cp template.md $(NEW_FILE)
	@echo 'Created file $(NEW_FILE)'

IMG_RESIZE=500x500\>
IMG=needsmore.jpeg
IMG_QUALITY=85
image-resize:
	convert -strip -resize $(IMG_RESIZE) -quality $(IMG_QUALITY)% $(IMG) ./assets/images/$(shell basename $(IMG))

compress-png:
	optipng $(IMG) -strip all -out ./assets/images/$(shell basename $(IMG))
