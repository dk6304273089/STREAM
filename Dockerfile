FROM python:3.7
COPY . /usr/app/
WORKDIR /usr/app/
RUN pip install -r requirements.txt
#CMD ["CMD gunicorn --bind 127.0.0.1:8501 wsgi"]
CMD ["sh", "-c", "streamlit run --server.port:8501 /usr/app/src/main.py"]