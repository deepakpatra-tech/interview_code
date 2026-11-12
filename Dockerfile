FROM python:3.12-slim AS Build

WORKDIR /app

COPY app/requirements.txt /app/

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# RUN stage

FROM python:3.12-slim as RUNNER

WORKDIR /app

COPY --from=Build /install /usr/local

COPY app/app.py /app/

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]


