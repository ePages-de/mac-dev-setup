#!/bin/bash
export SETTINGS="$1"

if [ -z "$1" ]
  then
  echo ""
  echo "============================================================================================================"
  echo "Misconfiguration!"
  echo "Specify location of file to store personalised settings as the script parameter."
  echo "For instance ./.personalised_settings.sh"
  echo "============================================================================================================"
  echo ""
  return 1
fi

if [ -f $SETTINGS ]
then
   echo "File containing personalised settings already present. See $SETTINGS"
   return 0
fi

echo ""
echo "============================================================================================================"
echo "To initialize the provisioning scripts please input yor data, which will be stored in $SETTINGS"
echo "============================================================================================================"
echo ""

read -p "Please specify your username for this machine:" DEV_USERNAME
read -p "Please specify your desired hostname for this machine:" DEV_HOSTNAME
read -p "Please specify your email:" DEV_EMAIL
read -p "Please specify your first and last name:" DEV_FULLNAME

echo "#!/bin/bash" > $SETTINGS
echo "export DEV_USERNAME=$DEV_USERNAME" >> $SETTINGS
echo "export DEV_HOSTNAME=$DEV_HOSTNAME" >> $SETTINGS
echo "export DEV_EMAIL=$DEV_EMAIL" >> $SETTINGS
echo "export DEV_FULLNAME=$DEV_FULLNAME" >> $SETTINGS

echo ""
echo "============================================================================================================"
echo " Entered data is stored in $SETTINGS"
echo "============================================================================================================"
echo ""
