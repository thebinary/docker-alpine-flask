FROM alpine
MAINTAINER theBinary <binary4bytes@gmail.com>

RUN apk add --no-cache py2-pip \
    && pip install --upgrade pip \
    && pip install flask

# Cleanup
RUN rm -rf /.wh /root/.cache /var/cache

ENV APP_DIR /app
ENV FLASK_APP app.py
RUN mkdir ${APP_DIR}
COPY app ${APP_DIR}

VOLUME ${APP_DIR}
EXPOSE 5000

WORKDIR ${APP_DIR}
ENTRYPOINT ["/usr/bin/flask"]
CMD ["run", "--reload", "-h", " 0.0.0.0"]
