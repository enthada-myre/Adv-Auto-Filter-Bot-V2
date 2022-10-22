if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/enthada-myre/Adv-Auto-Filter-Bot-V2 /Adv-Auto-Filter-Bot-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Adv-Auto-Filter-Bot-V2
fi
cd /Adv-Auto-Filter-Bot-V2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 -m bot
