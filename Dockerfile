FROM million12/nginx-php:latest
MAINTAINER jbrunicardi@gmail.com

RUN \
  yum update -y && \
  
  `# Install sendmail, memcached, (php-memcache already installed in base image)#` \
  yum install -y sendmail memcached && \
  
  `# Clean YUM caches to minimise Docker image size... #` \
  yum clean all && rm -rf /tmp/yum*

ADD container-files /