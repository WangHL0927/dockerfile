FROM centos:7

RUN yum install -y wget \
    && wget -O /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo \
    && wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo \
    && yum clean all

CMD ["bash"]
