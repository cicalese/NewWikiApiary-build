set x; \
sudo apt-get clean \
&& sudo apt-get update \
&& sudo apt-get install -y \
python3-dev \
python3-pip \
python3-wheel \
pipx \
&& sudo rm -rf /var/lib/apt/lists/* \
&& pipx install pywikibot \
&& pipx inject pywikibot sqlalchemy \
&& pipx inject pywikibot pymysql \
&& pipx inject pywikibot requests \
&& pipx inject pywikibot mwparserfromhell \
&& pipx ensurepath
