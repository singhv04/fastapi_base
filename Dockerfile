FROM python:3.6

# set the current working directory
WORKDIR /code

RUN apt update
RUN apt install libgl1 -y
#COPY ./installation.sh /code/installation.sh
COPY ./requirements.txt /code/requirements.txt

RUN pip install --upgrade pip
#RUN chmod +x /code/installation.sh

# install all the requirements
RUN pip install --upgrade numpy
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip install histomicstk --find-links https://girder.github.io/large_image_wheels
# copy all the code for fastapi inside docker
COPY ./app /code/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8034"]
