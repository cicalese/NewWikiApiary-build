set x; \
apt-get clean \
&& apt-get update \
&& apt-get install -y \
python3-dev \
python3-pip \
python3-wheel \
pipx \
&& rm -rf /var/lib/apt/lists/* \
&& pipx install pywikibot \
&& pipx inject pywikibot sqlalchemy \
&& pipx inject pywikibot pymysql \
&& pipx inject pywikibot requests \
&& pipx inject pywikibot mwparserfromhell \
&& pipx ensurepath
