Adding extra swap file if you have trouble installing plug ins:
```
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```

Removing that extra swap:
```
sudo swapoff -v /swapfile
sudo rm /swapfile
```
