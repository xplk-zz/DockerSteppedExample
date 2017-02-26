FROM centos:6.7

MAINTAINER Ivan Strelnikov <istrelnikov@thumbtack.net>

# Add repos
RUN rpm -Uvh http://repo.webtatic.com/yum/el6/latest.rpm && \
    rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm && \
    rpm -Uvh http://rpms.remirepo.net/enterprise/remi-release-6.rpm

# Install php and dependencies
RUN yum -y install  \
            php70w \
            php70w-cli \
            php70w-common \
            php70w-fpm

WORKDIR /var/www/our_app

ENTRYPOINT ["php-fpm", "-F"]