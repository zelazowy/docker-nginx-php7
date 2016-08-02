This repo is based on https://github.com/mikechernev/dockerised-php and http://geekyplatypus.com/dockerise-your-php-application-with-nginx-and-php7-fpm blogpost.

It is repo containing config for docker containers with nginx, php7 and mysql, and also nginx conf for secifically Symfony application.

How to start?
  1. clone this repo from github: `git clone git@github.com:zelazowy/docker-nginx-php7.git`
  2. in repo's `code` dir install new Symfony installation: http://symfony.com/doc/current/setup.html
  3. comment lines
```
if (isset($_SERVER['HTTP_CLIENT_IP'])
    || isset($_SERVER['HTTP_X_FORWARDED_FOR'])
    || !in_array(@$_SERVER['REMOTE_ADDR'], array('127.0.0.1', 'fe80::1', '::1'))
) {
    header('HTTP/1.0 403 Forbidden');
    exit('You are not allowed to access this file. Check '.basename(__FILE__).' for more information.');
}
```
  4. add `ksawery.local` to your local `/etc/hosts` file (you can change it in `site.conf` in line containing `server_name ksawery.local;`)
  5. run `docker-compose up` in main dir of this repo
  6. you're set up!

If something not works - let me know, I'll be happy to help!
