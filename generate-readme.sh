#!/bin/bash

set -x -e

cat>README.md<<"EOF"
<!--

This README is auto-generated with generate-readme.sh
Please add changes there.

-->
# Reading List
![](https://raw.githubusercontent.com/bamos/reading-list/gh-pages/img/reading-list.gif)

This repository contains my open source reading list.
See the [online version](http://bamos.github.io/reading-list).

> Hi, I welcome feedback on the code or presentation,
> I'm not a web developer or designer.
> The contents of my list is also lacking and I
> welcome suggestions.
>
> -Brandon. // 2015/04/19

# Goals
+ Plaintext and friendly data format.
+ Minimal hosting and deployment overhead.
+ Offline editing support.

# Technologies Used
+ Linux and OSX. Windows should also work with Cygwin, but
  I haven't tried. Please file any issues related to this.
+ [YAML](http://yaml.org) data.
+ [GitHub Pages](https://pages.github.com/) hosts and automatically
  deploys a 100% client-side website that can also be edited offline.
  [Bower](http://bower.io/) manages 3rd party library dependencies
  used on the site, stored in [bower.json](https://github.com/bamos/reading-list/blob/gh-pages/bower.json).

# Creating Your Reading List: Quick Start
1. Fork or copy the contents of this repository into a new GitHub repository.
  Make sure the default branch is set to `gh-pages` for deployment.
  At this point, you should be able to see my site hosted at.
  `http://<your-github-name>.github.io/reading-list`
2. Update the [data](https://github.com/bamos/reading-list/tree/gh-pages/data)
  and personalize [index.html](https://github.com/bamos/reading-list/blob/gh-pages/index.html).
  Push your changes to GitHub to see them immediately on the new site.

# Local Deployment
Most browsers will not be able to open `index.html` directly
from the filesystem because the js loads YAML resources.
One workaround is to use start a simple Python static
web server with `python2 -m SimpleHTTPServer`
and access the website with `localhost:8000`.

# Updating Bower Dependencies
Run `bower update` to obtain the dependencies in `bower_components`.
Run [./update-vendor-deps.sh](https://github.com/bamos/reading-list/blob/gh-pages/update-vendor-deps.sh)
to copy the necessary portions into
[vendor](https://github.com/bamos/reading-list/tree/gh-pages/vendor).

# Getting a Random Quote with a Script

[get-random-quote.hs](https://github.com/bamos/reading-list/blob/gh-pages/get-random-quote.hs)
is a Haskell script that prints a random quote from the quote
collection in
[data/finished.yaml](https://github.com/bamos/reading-list/blob/gh-pages/data/finished.yaml).

I use it to email myself quotes every few days with a cron
job piping the output to a command-line mailing program (mutt).

Appropriate packages can be installed with
[cabal](https://www.haskell.org/cabal/).

# Inspiration
The following projects inspired me to create
a GitHub-hosted reading list.

EOF

# To generate the following list, install https://github.com/jacquev6/PyGithub
# and download the `github-repo-summary.py` script from
# https://github.com/bamos/python-scripts/blob/master/python3/github-repo-summary.py.
# Please add projects to the list in the comment and in the table below.

github-repo-summary.py \
  cmonty/reading-list \
  coryschires/reading-list \
  DavidRagone/reading\_list \
  eightbitraptor/reading\_list \
  gbtekkie/ReadingList \
  jaredcacurak/Reading-List \
  >> README.md

cat>>README.md<<"EOF"

# People using this repo for their reading list

Ping me if you'd like to be added or removed.

EOF

github-repo-summary.py \
  0x0af/doiread \
  seanosaur/reading_list \
  aerovolts/reading-list \
  >> README.md

cat>>README.md<<"EOF"

# Credits and Licensing
All portions are
[MIT licensed](https://github.com/bamos/reading-list/blob/gh-pages/LICENSE.mit)
by Brandon Amos unless otherwise noted.

This project uses and modifies the following open source projects
and resources.
Modifications remain under the original license.

| Project | Modified | License |
|---|---|---|
| [Twitter bootstrap](https://github.com/twbs/bootstrap) | No | MIT |
| [handlebars.js](https://github.com/wycats/handlebars.js/) | No | MIT License
| [IronSummitMedia/startbootstrap-grayscale](https://github.com/IronSummitMedia/startbootstrap-grayscale) | Yes | Apache 2 |
| [makeusebrew/bootbox](https://github.com/makeusabrew/bootbox) | No | MIT |
| [MathJax](https://github.com/mathjax/MathJax) | No | Apache |
| [Flickr Photo](https://flic.kr/p/rnazyb) | Yes | [cc by-nc-sa 2.0](https://creativecommons.org/licenses/by-nc-sa/2.0/) |
| [TimelineJS](https://github.com/NUKnightLab/TimelineJS) | No | Mozilla Public License
EOF