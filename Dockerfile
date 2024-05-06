FROM python:3.12.3

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY poetry.lock $APP_HOME/poetry.lock
COPY pyproject.toml $APP_HOME/pyproject.toml

RUN pip install poetry

COPY web_hw_2 .

EXPOSE 5000:3000

CMD ["python", "main.py"]
