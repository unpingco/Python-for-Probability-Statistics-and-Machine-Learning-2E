FROM continuumio/miniconda3

ADD ./  /Python-for-Probability-Statistics-and-Machine-Learning-2E
WORKDIR Python-for-Probability-Statistics-and-Machine-Learning-2E 
RUN [ "conda","update", "-n","base", "-c", "defaults", "conda" ]
RUN [ "conda", "env", "update" ,"-n","base","-f","environment.yaml"]
EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook", "--allow-root","--ip=0.0.0.0", "--no-browser"]
