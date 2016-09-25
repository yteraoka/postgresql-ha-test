#******************************************************************************
# hosts
#******************************************************************************
echo "$my_ip $my_name" >> /etc/hosts
echo "$peer_ip $peer_name" >> /etc/hosts
echo "192.168.33.20 db" >> /etc/hosts

#******************************************************************************
# timezone
#******************************************************************************
timedatectl set-timezone Asia/Tokyo

#******************************************************************************
# install packages
#******************************************************************************
yum -y install https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-2.noarch.rpm
yum -y install postgresql95

#******************************************************************************
# PATH
#******************************************************************************
cat <<EOD > /etc/profile.d/pgsql.sh
PATH=/usr/pgsql-9.5/bin:\$PATH
EOD
