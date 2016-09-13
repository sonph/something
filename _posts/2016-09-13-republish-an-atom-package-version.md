---
layout: post
title: "How to: Republish an Atom package version"
date: 2016-09-13
categories: posts
tags: [atom, apm, git]
---

Sometimes right after publishing a new version for your amazing Atom package, you realize that you forgot to commit some changes or update the CHANGELOG. Here's how you can "republish" without creating a new patch just for that small change.

__NOTE__: similar to force pushing to a remote git repo, this _might_ cause conflicts and should only be used sparingly.

__PRO TIP__: _Diff twice, push once._

Here I published patch 0.1.3 of my [spacegray-light-neue-ui](https://atom.io/themes/spacegray-light-neue-ui) theme but forgot to add the CHANGELOG entry.


1. Revert to the latest commit before the tag on both local and remote.

        $ git log
        commit abc  // <-- Apm auto commit.

            Prepare 0.1.3 release

        commit def  // <-- Your latest feature commit.

            My cool new feature yo.

        $ git reset --hard def
        $ grep version package.json
          "version": "0.1.2",
        $ git push -f origin master

2. Delete the new tag on both local and remote.

        $ git tag -d v0.1.3
        Deleted tag 'v0.1.3' (was abc)
        $ git push origin :refs/tags/v0.1.3
        To git@github.com:sonph/spacegray-light-neue-ui
        - [deleted]          v0.1.3

3. Commit new stuffs.

        $ git add .
        $ git commit -m "forgot to add this changelog yo"

4. Republish the patch.

        $ apm unpublish spacegray-light-neue-ui@0.1.3  # Note 0.1.3 not v0.1.3
        $ apm publish patch

5. Profits!