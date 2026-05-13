  #SPECIFY THE BASE IMAGE
  #use an offical Python rutime as aparent image

  FROM pyhton:3.8-slim

  #set the woorking directory  in the container

  WORKDIR /app

  #copy the current directory contents into the conatiner ar /app

  COPY . /app

  #instal command of needed packages(specified in requirements.txt)

  RUN pip install --no-cache-dir -r requirements.txt

  #make port 5000 available tot he world outisde this container
  EXPOSE 5000

  #Define envirement variable
  ENV FLASK_APP=app.py

  #Run the flask app
  CMD ["flask", "run", "--host=0.0.0.0"]