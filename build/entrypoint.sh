#!/bin/bash
set -e

if [ ! -d /container ]; then
	mkdir /container
fi

if [ ! -d /container/bot ]; then
	mkdir /container/bot
	cd /container/bot
	pwd

	#if [ -z "$GIT_REPOSITORY" ]; then
	#	git clone $GIT_REPOSITORY .
	#else
	git clone https://github.com/corpnewt/CorpBot.py.git .
	#fi

	if [ -z "$GIT_BRANCH" ]; then
		git checkout $GIT_BRANCH
	fi

	git checkout rewrite
	# ignorepkg=1 /container/bot/Install.sh
	dos2unix Start.sh
fi

bash /container/bot/Start.sh
echo "exited $0"
