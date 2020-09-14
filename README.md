# TEST-TASK

// run without docker
git clone https://github.com/ALLMINER/TEST-TASK
cd TEST-TASK
gunicorn --bind 0.0.0.0:5000 wsgi:app 


/// make docker image 

cd TEST-TASK

docker build -t test .
  //run
docker run -d -p 5000:5000 --name test  --restart=always test

// check 
http://ip:5000/
