!#/bin/bash
echo 'datasource_list: [None ]' | sudo -s tee /etc/cloud/cloud.cfg.d/90_dpkg.cfg
echo 'Uninstall cloud init package'
sudo apt-get purge cloud-init -y && sudo apt autoremove -y
echo 'Delete cloud directory'
sudo rm -rf /etc/cloud/
echo 'Delete cloud library'
sudo rm -rf /var/lib/cloud/
