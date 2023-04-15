if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AyushSharma64047/VIDEOconvertor /VIDEOconvertor 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VIDEOconvertor 
fi
cd /VIDEOconvertor 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
gunicorn app:app python -m main
