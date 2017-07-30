FROM python:3.6.2-slim

RUN apt-get update

RUN apt-get -y install libffi-dev \
	python-dev \
	python3-pip \
	libav-tools \
	libxml2 \
	libxml2-dev \
	git \
	dos2unix

RUN python3 -m pip install -U https://github.com/Rapptz/discord.py/archive/rewrite.zip#egg=discord.py[voice]

RUN python3 -m pip install -U Pillow

RUN python3 -m pip install -U youtube-dl

RUN python3 -m pip install -U Requests

RUN python3 -m pip install -U parsedatetime

RUN python3 -m pip install -U psutil

RUN python3 -m pip install -U pyparsing

RUN python3 -m pip install -U pyquery

RUN python3 -m pip install -U git+https://github.com/paulovn/python-aiml

RUN python3 -m pip install -U pyspeedtest

RUN python3 -m pip install -U pytz

RUN python3 -m pip install -U wikipedia

RUN python3 -m pip install -U mtranslate

RUN python3 -m pip install -U git+https://github.com/shaunduncan/giphypop.git#egg=giphypop

COPY entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh

RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat from mysql 5.6 dockerfile

ENTRYPOINT ["entrypoint.sh"]
