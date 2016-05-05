FROM million12/nginx-php:php56
MAINTAINER jbrunicardi@gmail.com

RUN \
  rpm --rebuilddb && yum update -y && \
  
  `# Install sendmail #` \
  yum install -y sendmail && \
  
  `# Clean YUM caches to minimise Docker image size... #` \
  yum clean all && rm -rf /tmp/yum*

ADD container-files /