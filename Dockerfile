FROM alpine

LABEL "name"="rochook"
LABEL "repository"="https://github.com/ivansslo/rochook"
LABEL "version"="2.0.2"

LABEL com.github.actions.name="RocHook"
LABEL com.github.actions.description="A GitHub workflow action that calls a signed webhook from your GitHub workflow"
LABEL com.github.actions.icon="terminal"
LABEL com.github.actions.color="gray-dark"

RUN apk add --no-cache bash curl openssl util-linux xxd jq

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
