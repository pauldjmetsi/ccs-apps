# PetClinic install with different cloud repos depending on deployment environment
# https://raw.githubusercontent.com/pauldjmetsi/ccs-apps/master/petclinic-install.sh

source /usr/local/osmosix/etc/userenv

# make appPackages folder 
mkdir /opt/remoteFiles/appPackage
cd /opt/remoteFiles/appPackage

if [ $Cloud_Setting_CloudFamily == 'Vmware' ]; then
	# download petclinic zip file
	wget http://172.21.8.2/app_repo/petclinic.zip
	# unzip petclinic.zip
	unzip petclinic.zip
	# set files ot be executable 
	chmod 755 *
	# install petclinic app
	./manager
else 
	# download petclinic zip file
	wget https://raw.githubusercontent.com/pauldjmetsi/ccs-apps/master/petclinic.zip
	# unzip petclinic.zip
	unzip petclinic.zip
	# set files ot be executable 
	chmod 755 *
	# install petclinic app
	./manager
fi 
