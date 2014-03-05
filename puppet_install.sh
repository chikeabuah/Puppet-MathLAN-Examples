#! /bin/sh

#Kai Mayer
#Chike Abuah
#Dept of Computer Science
#Grinnell College

#Created 6/25/2012
#Last Modified 6/25/2012

#Script to automate installation and setup of Puppet client on MathLan Machines

#Ensure that system is up to date 

/usr/bin/aptitude update

#Install Puppet client on system

/usr/bin/aptitude install puppet

#Update puppet.conf file

/bin/mv /etc/puppet/puppet.conf /etc/puppet/puppet.conf-as-received
/bin/cp /setup/squeeze/etc/puppet/puppet.conf /etc/puppet/puppet.conf

#Update /etc/default/puppet to start Puppet on boot

/bin/mv /etc/default/puppet /etc/default/puppet-as-received
/bin/cp /setup/squeeze/etc/default/puppet /etc/default/puppet

#Start up Puppet in test mode

/usr/bin/puppet agent --test

#The Puppet client will then send a request to sign its certificate to 
#puppet.cs.grinnell.edu . We must sign in on the Puppet server and sign this 
#certificate using the command:

#/usr/sbin/puppetca --sign hostname.cs.grinnell.edu

/bin/echo "Sign in as root on puppet.cs.grinnell.edu and enter the following command: \n /usr/sbin/puppetca --sign hostname.cs.grinnell.edu"

#Alternatively, if installing Puppet on multiple machines, we have the option of
#signing all their certificates simulataneously using:

#/usr/sbin/puppetca --list

#To examine all waiting certificates, then:

#/usr/sbin/puppetca --sign --all


#We must then return to the Puppet client and restart the daemon using:

#/etc/init.d/puppet restart

/bin/echo "Then restart the Puppet client on this machine using: \n/etc/init.d/puppet restart"
