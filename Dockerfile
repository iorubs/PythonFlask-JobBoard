FROM python:3.6-alpine AS dev

WORKDIR /src/app/

COPY ./requirements.txt .
RUN pip install -r ./requirements.txt

COPY . .

CMD ["flask", "run", "-h", "0.0.0.0"]
