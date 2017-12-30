#!/bin/bash
# If value exsists, use it, or don't, and just match any word.
NAME=$([ "$1" ] && echo "$1" || echo '\w')
# loop through remote branches - Remove HEAD branches
for branch in `git branch -r | grep -v HEAD`;
  # show the latest commit with Author Name and Date, and the branch it's on
  do echo -e `git show --format="%an - %ar" $branch | head -n 1` - $branch;
# filter out everything but user's name, and sort.
done | grep $NAME | sort
