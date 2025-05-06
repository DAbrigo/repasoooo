FROM python
RUN pip install flask
COPY index.html /home/myapp/templates/
COPY app.py /home/myapp/
EXPOSE 9000
CMD python3 /home/myapp/app.py
