# Instructions for building the WikiApiary environment

Download the version of Canasta that this site will depend on. From that
directory, run:

```
sudo docker build . -t canasta:dev
```

Change directory to the `canasta-w8y-image` subdirectory of the build directory.
Run:

```
sudo docker build . -t canasta-w8y:1.0
```

Change directory to the build directory. Run:

```
export BUILD_DIR=`pwd`
git clone https://github.com/cicalese/NewWikiApiary.git extensions/WikiApiary
```

Change directory to where you would like the container to be created.

```
${BUILD_DIR}/create.sh
cd wikiapiary
```

Log in to the wiki as Admin. Navigate to Special:BotPasswords and create a bot password for `mybot`. Copy the password.

Prepare the host that will run the scripts by executing `${BUILD_DIR}/scripts/install.sh` and `${BUILD_DIR}/scripts/env.sh`.

Copy `${BUILD_DIR}/files/user-password.py` to the `extensions/WikiApiary/scripts` directory. Edit `extensions/WikiApiary/scripts/user-password.py` and set the password copied above.

Copy the contents of `${BUILD_DIR}/files/MediaWiki:Common.css` and `${BUILD_DIR}/files/Template:Wiki` to the corresponding pages on the wiki.
