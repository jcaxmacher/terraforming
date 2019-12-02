FROM quay.io/dtan4/terraforming:latest

RUN apk add --update \
      groff \
      python \
      python-dev \
      py-pip \
      build-base \
      && pip install awscli --upgrade --user \
      && apk --purge -v del py-pip \
      && rm -rf /var/cache/apk/* \
      && mkdir $HOME || true

ADD ./form.sh ~/

CMD chmod +x ~/form.sh && ~/form.sh && ~/.local/bin/aws s3 sync ~/ s3://nnideascode/formed/
