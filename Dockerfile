FROM archlinux:latest
RUN pacman -Syy
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm python python-pip git openssh postgresql
RUN sudo -u postgres initdb --locale=en_US.UTF-8 -E UTF8 -D /var/lib/postgres/data
RUN systemctl enable postgresql && systemctl start postgresql
RUN useradd pyshelf && chpasswd pyshelf:pyshelf
RUN mkdir -p /srv/Books && mkdir -p /srv/http && \
    chown -R http.pyshelf /srv/Books && chown -R http.pyshelf /srv/http
RUN systemctl enable sshd && systemctl start sshd
VOLUME ['/srv/Books','/srv/http']
ENV nginx_conf /etc/nginx/nginx.conf
ENV PYTHONUNBUFFERED 1
WORKDIR /srv/http
RUN git clone https://github.com/th3r00t/pyShelf.git /srv/http && \
    git checkout 0.5.0--docker && pip install -r requirements.txt
RUN sudo -u postgres psql -f create_db.sql
EXPOSE 80 22 8000
RUN gunicorn pyShelf.wsgi 8000:8000
