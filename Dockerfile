FROM alpine:latest
ADD https://github.com/tsenart/vegeta/releases/download/cli%2Fv12.0.0/vegeta-12.0.0-linux-amd64.tar.gz vegeta-12.0.0-linux-amd64.tar.gz
RUN tar -zxvf vegeta-12.0.0-linux-amd64.tar.gz

FROM scratch
COPY --from=0 vegeta /
ENTRYPOINT ["/vegeta"]
