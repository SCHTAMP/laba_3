#!/bin/bash

ps -eo rss,%mem,comm --sort -rss h | head -n 15 | numfmt --from-unit=1000 --to=si --suffix=B --padding=6
