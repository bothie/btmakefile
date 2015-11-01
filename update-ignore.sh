#! /bin/sh

if test -d CVS
then
	file=.cvsignore
fi

if test -d .git
then
	file=.gitignore
fi

if test -n "$file"
then
	(
		echo "$file"
		cat .ignore
	) > "$file"
fi
