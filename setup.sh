# Downloads dependencies for djangoappenginge project
# Run at start of project like: ./setup.sh
# You have to be in the root project folder for this to work properly

echo "Changing dir to src/..."
cd src/

echo "Downloading and unzipping django-nonrel..."
curl -s -2 -O https://bitbucket.org/wkornewald/django-nonrel/get/tip.zip
unzip -q tip.zip
mv wkornewald-django-nonrel-tip/ django-nonrel/
rm tip.zip

echo "Downloading and unzipping djangoappengine..."
curl -s -2 -O https://bitbucket.org/wkornewald/djangoappengine/get/tip.zip
unzip -q tip.zip
mv wkornewald-djangoappengine-tip/ djangoappengine/
rm tip.zip

echo "Downloading and unzipping djangotoolbox..."
curl -s -2 -O https://bitbucket.org/wkornewald/djangotoolbox/get/tip.zip
unzip -q tip.zip
mv wkornewald-djangotoolbox-tip/ django-toolbox/

echo "Downloading and unzipping django-autoload..."
curl -s -2 -O https://bitbucket.org/twanschik/django-autoload/get/tip.zip
unzip -q tip.zip
mv twanschik-django-autoload-tip/ django-autoload/

echo "Downloading and unzipping django-dbindexer..."
curl -s -2 -O https://bitbucket.org/wkornewald/django-dbindexer/get/tip.zip
unzip -q tip.zip
mv wkornewald-django-dbindexer-tip/ django-dbindexer/
rm tip.zip

echo "Moving files around..."
mkdir django/ autoload/ dbindexer/ djangotoolbox/ ../lib/ ../lib/djangoappengine/
cp -R django-nonrel/django/* django/
cp -R django-toolbox/djangotoolbox/* djangotoolbox/
cp -R django-autoload/autoload/* autoload/
cp -R django-dbindexer/dbindexer/* dbindexer/

mv django-nonrel/ ../lib/
mv django-autoload/ ../lib/
cp -R djangoappengine/* ../lib/djangoappengine/ #just cp, since appengine does not have module inside
mv django-toolbox/ ../lib/
mv django-dbindexer/ ../lib/

echo "Files in the src/ folder: "
find . -type f |wc -l
echo "---"
echo "Done, test that it all works by running 'python manage.py runserver'"
