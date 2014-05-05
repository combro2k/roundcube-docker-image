# roundcube

## About

A [Roundcube](http://roundcube.net/) image.

Based on Ubuntu Trusty (14.04) and built using the roundcube package in universe
repo (0.9.5).  Uses sqlite3 database.

Served using Apache over SSL (exposes port 443), using a self-signed
certificate.

## Usage

Using the image as-is is possible (it should be able to connect to any IMAP
server specified on the login screen), e.g.:

    docker run -P combro2k/roundcube-docker-image

You can also specify a roundcube config file (`main.inc.php`) to use by
specifying a URL to download it from (you'll need to do that to be able to send
emails (you need to configure SMTP server in `main.inc.php`)); you should also
specify your timezone in TZ variable to ensure the dates are correctly
displayed:

    docker run -P -e ROUNDCUBE_CONFIG_URL=http://foo/main.inc.php \
        -e TZ=Europe/London combro2k/roundcube-docker-image
