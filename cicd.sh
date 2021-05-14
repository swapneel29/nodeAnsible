sudo apt-get update
sudo apt-get install -y docker.io
cd /home/ubuntu
sudo rm -rf cicd
git clone https://github.com/swapneel29/cicd.git
cd /home/ubuntu/cicd
sudo docker build -t nodecicd .
sudo docker stop $(sudo docker ps -a -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker run -p 8080:8080 -d nodecicd