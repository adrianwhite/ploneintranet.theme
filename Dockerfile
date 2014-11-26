from ubuntu:14.04
maintainer guido.stevens@cosent.net
run apt-get update
run apt-get install -y python-dev gcc make zlib1g-dev libjpeg-dev python-virtualenv git-core
run apt-get install -y libfreetype6-dev gettext python-pip libxslt1-dev python-lxml
run apt-get install -y jed
run apt-get update && apt-get install -y npm nodejs ruby ruby-dev
run ln -s /usr/bin/nodejs /usr/local/bin/node
run gem install bundler
run locale-gen en_US.UTF-8
run useradd -m -d /app app
run mkdir /.npm && chown app.app /.npm
run mkdir /.config && chown app.app /.config
run mkdir /.cache && chown app.app /.cache
run mkdir /.local && chown app.app /.local
run echo ploneintranet.theme > /etc/debian_chroot
cmd ["/bin/bash"]
