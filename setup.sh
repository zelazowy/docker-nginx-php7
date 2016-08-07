mkdir docker-symfony
cd docker-symfony
git clone git@github.com:zelazowy/docker-nginx-php7.git conf
composer create-project symfony/framework-standard-edition symfony
sudo echo "127.0.0.1 docker.local" >> /etc/hosts
