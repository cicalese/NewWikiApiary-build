if [ ! -v "BUILD_DIR" ]; then
	echo "BUILD_DIR is not set"
	exit
fi
set -eux
sudo -E canasta create -i wikiapiary -n wikiapiary.wmcloud.org -w Wikiapiary -a admin -o compose -r $BUILD_DIR/wikiapiary.override.yml --rootdbpass --wikidbuser wikiuser --wikidbpass -v
cd wikiapiary
sudo cp $BUILD_DIR/settings/* config/settings
sudo rm config/settings/Vector.php
sudo cp -r $BUILD_DIR/extensions/* extensions
sudo canasta restart
