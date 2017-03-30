# Automatic Provisioning of Development Environment for Mac OS X

Download (and extract) the [provisioning scripts](https://github.com/ePages-de/mac-dev-setup/archive/master.zip) from GitHub.

```sh
cd ~/Downloads/mac-dev-setup-master
./setup.sh
```

The script will ask for some variables and will store their content in `./.personalised_settings.sh` for later re-use.

The installation procedure will download many packages (about 2.5GB of files) and you will need to enter your root password from time to time.
Some packages (notably XCode CLI Tools and TeamViewer) will prompt you with some installation window on their own, which you will need to process manually.

# Manual steps afterwards

There are still some manual steps left in order to finalize the installation.
Some of these could surely be automated as well (pull requests appreciated!), while other's don't.

## Install VirtualBox Guest Additions

```sh
vagrant plugin install vagrant-vbguest
```

## Create docker machine

Depending on your physical hardware you need to specify different values for CPU/RAM/HDD, but the general procedure works like this:

```sh
docker-machine create --driver virtualbox --virtualbox-cpu-count 8 --virtualbox-memory 6144 --virtualbox-disk-size 60000 default
```

## Reboot

It is a good idea to reboot your system afterwards to make sure all settings and environment variables are taken into account.

## Lombok

While IntelliJ has already been installed, the "Lombok" plugin is still missing to be able to start working. Hints for the
installation process can be found on [jetbrains.com](https://www.jetbrains.com/help/idea/2016.3/installing-updating-and-uninstalling-repository-plugins.html).

For Eclipse, please refer to the documentation on the official project homepage: [projectlombok.org](https://projectlombok.org/).
Further, you'll need to install the [Buildship plugin](https://projects.eclipse.org/projects/tools.buildship).


# Switch to versioned clone of GitHub project

Now that you have a running development environment you should replace your download of the zipped GitHub project with a real clone of that repository:

```sh
git clone https://github.com/ePages-de/mac-dev-setup.git
cd mac-dev-setup
```

Don't forget to move your `./.personalised_settings.sh` into this new directory

Now you can create a new branch and maintain your changes or prepare pull requests from it. Especially tweaking your `.bash_profile` is highly recommended, see for instance
`CONFIG_SERVER_REPO` environment variable in it.

```sh
git checkout -b local
vi common/templates/.bash_profile.j2
```
