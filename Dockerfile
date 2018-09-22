FROM dreamlabs/php-composer:latest

RUN composer global require brianium/paratest && \
    ln -s /root/.composer/vendor/bin/paratest /usr/bin/paratest;

ENTRYPOINT ["paratest"]