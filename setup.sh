# Downloads dependencies for djangoappenginge project
# Run at start of project like: ./setup.sh
# You have to be in the root project folder for this to work properly

echo "Changing dir to src/..."
mkdir lib/
mkdir src/django/ src/djangotoolbox/ src/autoload/ src/dbindexer/ src/djangoappengine/
cd lib/

echo "Downloading and unzipping django-nonrel..."
git clone -q https://github.com/django-nonrel/django-nonrel.git

echo "Downloading and unzipping djangoappengine..."
git clone -q https://github.com/django-nonrel/djangoappengine.git

echo "Downloading and unzipping djangotoolbox..."
git clone -q https://github.com/django-nonrel/djangotoolbox.git

echo "Downloading and unzipping django-autoload..."
git clone -q https://github.com/adieu/django-autoload.git

echo "Downloading and unzipping django-dbindexer..."
git clone -q https://github.com/adieu/django-dbindexer.git

echo "Moving files around..."
cp -R django-nonrel/django/* ../src/django/
cp -R djangotoolbox/djangotoolbox/* ../src/djangotoolbox/
cp -R django-autoload/autoload/* ../src/autoload/
cp -R django-dbindexer/dbindexer/* ../src/dbindexer/
cp -R djangoappengine/* ../src/djangoappengine/

echo "Cleaning the src/ folder"
cd ../src/
rm -rf djangoappengine/.git*
rm -rf djangotoolbox/.git*
rm -rf django-autoload/.git*
rm -rf django-dbindexer/.git*
rm -rf django-nonrel/.git*

echo "Files in the src/ folder: "
find . -type f |wc -l
echo "---"
echo "Done, test that it all works by running 'python manage.py runserver'"
