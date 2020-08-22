FROM python:3-slim

RUN pip install yamllint \
    && mkdir -p /root/.config/yamllint

COPY config /root/.config/yamllint/config

CMD ["yamllint"]
