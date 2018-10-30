FROM busybox

RUN echo "ll='ls -lah --color'" > /root/.ashrc

RUN echo "SEGREDO TESTE: ${ENV_SECRET_TST}"

ENV APP_HOME /home/app
ENV APP_NAME repo
ENV APP_DIR "${APP_HOME}/${APP_NAME}"

RUN mkdir -p $APP_DIR

COPY . ${APP_DIR}/

WORKDIR $APP_DIR