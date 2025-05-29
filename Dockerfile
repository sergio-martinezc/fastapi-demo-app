FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app

# Install dependencies
# FastAPI is already installed in the base image but pandas for example isn't
COPY ./requirements.txt /app/

RUN pip install -r requirements.txt
RUN apt-get update && apt-get install telnet -y && apt-get install netcat-traditional -y

COPY ./src /app/src

ENV CSV_FILE="./src/data/courses.csv"

EXPOSE 8000

CMD ["uvicorn", "src.main:app", "--host=0.0.0.0", "--reload"]
