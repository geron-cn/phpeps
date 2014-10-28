#backup
path=/var/www/sites.bak
filename=eps$(date +%y-%m-%d-%H:%M).tar.bz2
sudo tar jcfv $path/$filename /var/www/eps

echo "backup done! start deploy"
#deploy
sudo cp -rfv ./ /var/www/eps/

echo "deploy done!"
