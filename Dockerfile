FROM docker:19.03.2
LABEL "repository"="https://github.com/vladavip88/create-npmrc"
LABEL "maintainer"="Vladimir Prsendic"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
