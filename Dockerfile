FROM unit:1.31.1-python3.11
LABEL maintainer="David Wittman"
EXPOSE 8080
COPY config.json /docker-entrypoint.d/config.json
COPY requirements-dev.txt requirements.txt Pipfile Pipfile.lock /www/
RUN pip install -r /www/requirements.txt
COPY . /www/
