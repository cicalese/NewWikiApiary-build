vars=(
	"BUILD_DIR"
	"WIKIAPIARY_DB_USERNAME"
	"WIKIAPIARY_DB_PASSWORD"
)
for var in "${vars[@]}"; do
	if [ ! -v "$var" ]; then
		echo "$var is not set"
		exit
	fi
done
set -eux
sudo -E canasta create -i wikiapiary -n wikiapiary.wmcloud.org -w Wikiapiary -a admin -o compose -r $BUILD_DIR/wikiapiary.override.yml -v
cd wikiapiary
sudo sh -c 'echo "WIKIAPIARY_DB_USERNAME=${WIKIAPIARY_DB_USERNAME}" >> .env'
sudo sh -c 'echo "WIKIAPIARY_DB_PASSWORD=${WIKIAPIARY_DB_PASSWORD}" >> .env'
sudo cp $BUILD_DIR/settings/* config/settings
sudo rm config/settings/Vector.php
sudo cp -r $BUILD_DIR/extensions/* extensions
sudo cp $BUILD_DIR/files/user-password.py extensions/NewWikiApiary/scripts
sudo canasta restart
