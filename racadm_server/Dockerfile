FROM centos:7.3.1611

MAINTAINER Michele Facco <faccomichele@gmail.com>

ENV dir /rislab
ENV ldir /sysfiles
ENV webdir /var/www/rislab

RUN yum update -y && yum install -y net-snmp-utils openssl pciutils lighttpd php-fpm lighttpd-fastcgi
RUN mkdir ${dir}
WORKDIR ${dir}
ADD local_repo/ ${dir}
RUN rpm -ivh *.rpm

RUN mkdir ${webdir}

RUN echo "nano /etc/php-fpm.d/www.conf && user = lighttpd && group = lighttpd"
RUN echo "nano /etc/php.ini && cgi.fix_pathinfo = 1"
RUN echo "nano /etc/lighttpd/modules.conf && ## && ## FastCGI (mod_fastcgi) && ## && include \"conf.d/fastcgi.conf\""
RUN echo "nano /etc/lighttpd/conf.d/fastcgi.conf"
RUN echo "nano /var/www/htdocs/info.php <?php phpinfo(); ?>"

RUN systemctl start php-fpm.service
RUN systemctl enable  lighttpd.service
RUN systemctl start lighttpd.service
