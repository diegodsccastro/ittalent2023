Vagrant.configure("2") do |config|

   # Nome da imagem do VagrantBox
   config.vm.box = "ubuntu/trusty64"

   config.vm.hostname = "servidor-web-ittalent-teste"

 

   # Configurações de Rede com interface de rede local em DHCP

   config.vm.network "public_network", type: "dhcp"

 

   # Porta 80 da máquina virtual para a porta 8080

   config.vm.network "forwarded_port", guest: 80, host: 8080

   

   # Configurações do servidor de Virtualbox

   config.vm.provider "virtualbox" do |vb|

     vb.memory = "1024"

     vb.cpus = 1

   end


   # Configurações dos diretórios compartilhados entre os sistemas local e o servidor

   config.vm.synced_folder "./shared_windows", "/shared_linux"

   

   # Configurações de Shell para instalação dos programas pós instalação do sistema

   config.vm.provision "shell", inline: <<-SHELL

     apt-get update
     
     apt-get install -y nginx
     
     apt-get install -y nano

     apt-get install -y python3.9
     
     apt-get install -y apache2

     apt-get install -y htop

     ufw allow 8080/tcp

     systemctl start apache2

     systemctl enable apache2

   SHELL

 end
