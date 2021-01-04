FROM python:rc-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
# copy requirements to work-dir
RUN pip install --no-cache-dir -r requirements.txt

COPY myapp.py ./
# copy myapp.py to work-dir

CMD ["python", "./myapp.py"]
