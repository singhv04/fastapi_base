FROM python:3.6

# set the current working directory
WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

# install all the requirements
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# copy all the code for fastapi inside docker
COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8034"]
