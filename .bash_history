cd ~/klipper/
sudo cp ./scripts/klipper-mcu.service /etc/systemd/system/
sudo systemctl enable klipper-mcu.service
cd ~/klipper/
make menuconfig
sudo service klipper stop
make flash
sudo service klipper start
sudo usermod -a -G tty pi
sudo raspi-config 
sudo apt-get install gpiod
sudo apt-get install git -y
cd ~ && git clone https://github.com/th33xitus/kiauh.git
./kiauh/kiauh.sh
cd ~
git clone https://github.com/julianschill/klipper-led_effect.git
cd klipper-led_effect
./install-led_effect.sh
./kiauh/kiauh.sh
cat /home/pi/printer_data/config/shell_command.cfg 
ls -la
mkdir scripts
cd scripts/
nano autocommit.sh
chmod +x autocommit.sh
./autocommit.sh 
nano autocommit.sh
./autocommit.sh 
tail -f /var/log/kern.log
tail -f /var/log/messages
cd ../klipper
make menuconfig
make
tail -f /var/log/messages
sudo shutdown -r now
