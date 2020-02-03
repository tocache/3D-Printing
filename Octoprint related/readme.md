Adding extra swap file if you have trouble installing plugins:
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

How to install Printer Stats plugin v2.0.2:<br>
1.Install the numpy version that mxm11 recommends I first had to update PIP:
```
/home/pi/oprint/bin/python2 -m pip install --upgrade pip
```
2.Update numpy:
```
/home/pi/oprint/bin/python2 -m pip install numpy==1.16.5
```

1a.Try this 
```
sudo apt-get install byobu
byobu-enable
~/oprint/bin/pip --no-cache-dir install numpy==1.16
~/oprint/bin/pip --no-cache-dir install pandas==0.24.2
```

I2C bus status (if enabled or not)
```
ls /dev/*i2c*
```

Get CPU temperature:
```
cd /opt/vc/bin
LD_LIBRARY_PATH=/opt/vc/lib ./vcgencmd measure_temp
```
