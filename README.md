# Symfony 2 with NGINX Base Box

To get started, first you need to create the VM.

    git clone git@github.com:alsbury/symfony2nginx.git sf2
    cd sf2

By installing the hostsupdater plugin, you don't have to edit the hosts file every time you turn the VM on.  This will require you to type an adminsitrator password when you turn the VM on or off.  But it makes everything a lot easier if you happen to run more than one Vagrant VM.

    vagrant install plugin vagrant-hostsupdater

Then you can launch the VM:

    vagrant up

At this point, you should be able to visit http://sf2.debug
  
