#!/usr/bin/env bash
jekyll build
scp -o ProxyCommand="ssh woju.scrim.psu.edu nc laurasia.ems.psu.edu 22" -r _site/* laurasia.scrim.psu.edu:pches_website/
