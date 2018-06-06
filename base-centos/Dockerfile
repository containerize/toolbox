FROM centos:7
RUN set -e \
    && echo "install packages" \
    && yum install -y zsh git \
    && echo "clean cached data" \
    && yum clean all \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"