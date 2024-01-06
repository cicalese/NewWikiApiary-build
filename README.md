# Instructions for building the WikiApiary environment

Set the following environment variables:
- WIKIAPIARY_DB_USERNAME
- WIKIAPIARY_DB_PASSWORD

From the directory containing these files, run:

```
export BUILD_DIR=`pwd`
git clone https://github.com/cicalese/NewWikiApiary.git extensions/NewWikiApiary
```

Change directory to where you would like the container to be created.

```
${BUILD_DIR}/create.sh
cd wikiapiary
```

Log in to the wiki as Admin. Navigate to Special:BotPasswords and create a bot password for `mybot`. Copy the password.

Copy `${BUILD_DIR}/files/user-password.py` to the `extensions/NewWikiApiary/scripts` directory. Edit `extensions/NewWikiApiary/scripts/user-password.py` and set the password copied above. 

Copy the contents of `${BUILD_DIR}/files/MediaWiki:Common.css` and `${BUILD_DIR}/files/Template:Wiki` to the corresponding pages on the wiki.
