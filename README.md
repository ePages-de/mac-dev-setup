# Automatic Provisioning of Development Environment for Mac OS X

Download (and extract) the [provisioning scripts](https://github.com/ePages-de/mac-dev-setup/archive/master.zip) from GitHub.

```sh
cd ~/Downloads/mac-dev-setup-master
./setup.sh
```

The script will ask for some variables and will store their content in `./.personalised_settings.sh` for later re-use.

The installation procedure will download many packages (about 2.5GB of files) and you will need to enter your root password again from time to time.

# Manual steps afterwards

There are still some manual steps left in order to finalize the installation. Some of these could surely be automated as well (pull request appreciated!), while other's don't.

## Install VirtualBox Guest Additions

```sh
vagrant plugin install vagrant-vbguest
```

## Create docker machine

```sh
docker-machine create --driver virtualbox --virtualbox-cpu-count 8 --virtualbox-memory 6144 --virtualbox-disk-size 60000 default
```
