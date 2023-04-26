FROM alpine:3.17.3

ADD --chmod=755 https://github.com/seybee-qa/seybee-releases/releases/latest/download/sey-linux-amd64.zip /
RUN unzip sey-linux-amd64.zip
RUN chmod +x sey-linux-amd64

ENTRYPOINT ["/sey-linux-amd64"]
