---
layout: post
title: "Post title here"
date: 2017-02-06
categories: posts
tags: [markdown, git, vim, zsh, rant]
---

First paragraph. This will be used as the excerpt in post list view. If HTML
tags or formatting is used, double check that they don't get escaped.

## TODO(sonph): Writing tips in `template.md` #15
- Tip 1: First draft will always be terrible. Jot down as much as you can, take a break, then come back and edit it.

## Post attributes:
- `dateModified: 2016-06-01`: date the post has been modified. For the first revision `dateModified` is the same as `date`.
- `categories: posts` (one of `[posts, projects, r]`)
- `image: someimage.gif`: URL of an image that is representative of the post, for [`jekyll-feed`][1]; `/assets/images` is implied
- `excerpt: This post is about...`: [Excerpt][2]; if unset the first paragraph is the excerpt.
- `permalink: /some/permalink`: Override the default [permalink][3] (`/posts/:title` in `_config.yml`)

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pretium ut ligula quis iaculis. Nam pharetra eros non nunc faucibus pretium. Aliquam nec diam blandit, porttitor mauris et, malesuada risus. In ullamcorper tortor purus, a porta enim eleifend a. Sed viverra dignissim augue. Donec laoreet vitae libero sit amet commodo. Suspendisse gravida tellus eleifend, gravida augue non, tincidunt libero. Nam accumsan auctor ipsum, a pulvinar purus commodo vel. Nam vitae porta sapien. Suspendisse eleifend, orci ut fringilla ultricies, odio sem commodo diam, ac varius lorem elit lobortis mauris. Donec mattis nisl sit amet mauris ultrices porttitor. Curabitur accumsan ligula eget eros lacinia euismod. Etiam pellentesque sagittis ornare.

Roses are red<br>
Violets are blue


Roses are red  
Violets are blue

# Header 1

## Header 2 {#header2}

### Header 3

#### Header 4 {#header4}

---

## Links
[link](http://)

[link][1]

[1]: http://google.com

[link to header 2](#header2)

![img](/assets/images/something.png)

<img class="no-shadow" alt="title" src="/assets/images/mac-window-screenshot-with-shadow.png">

_italics_

__bold__

1. list

        code block in list item
        code block in list item
        code block in list item

2. list
3. list

- list
- list
- list

> quote
> quote
> quote

```python
from collections import deque
for d in dicts:
  s = set().union(*d.keys())
```

4 spaces code block

    from collections import namedtuple

    SomeTuple = namedtuple('SomeTuple', ['x', 'y'])


<pre>
             ,-.
    ,     ,-.   ,-.
   / \   (   )-(   )
   \ |  ,.>-(   )-<
    \|,' (   )-(   )
     Y ___`-'   `-'
     |/__/   `-'
     |
     |
     |    -hrr-
  ___|_____________
</pre>

<script src="https://gist.github.com/sonph/e34560eb5fe7befcbcd41031f195b125.js"></script>

[1]: github.com/jekyll/jekyll-feed
[2]: jekyllrb.com/docs/posts/
[3]: jekyllrb.com/docs/permalinks/
