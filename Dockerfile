FROM python:3
# set deafault path for a container

WORKDIR /usr/src/app
#Copy dependencies which is required to run train app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .

EXPOSE 8501
# usually python we run "python app.py" but this stremlit app it should run like below
CMD ["streamlit","run", "app.py"] 
