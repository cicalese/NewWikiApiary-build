vars=(
	"BUILD_DIR"
	"WIKIAPIARY_DB_USERNAME"
	"WIKIAPIARY_DB_PASSWORD"
	"WIKIAPIARY_DB_HOST"
	"WIKIAPIARY_DB_PORT"
	"WIKIAPIARY_DB_SCHEMA"
	"WIKIAPIARY_USERNAME"
	"WIKIAPIARY_URL"
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
sudo cp $BUILD_DIR/settings/* config/settings
sudo rm config/settings/Vector.php
sudo cp -r $BUILD_DIR/extensions/* extensions
sudo cp -r $BUILD_DIR/resources .
sudo cp $BUILD_DIR/files/user-password.py extensions/NewWikiApiary/scripts
sudo -E canasta restart
