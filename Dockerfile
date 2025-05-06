FROM python
RUN pip install flask
COPY index.html /home/myapp/templates/
COPY app.py /home/myapp/
EXPOSE 8000
CMD python3 /home/myapp/sample_app.py
