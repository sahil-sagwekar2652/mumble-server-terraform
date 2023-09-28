# Install the murmur server
sudo add-apt-repository --yes ppa:mumble/release
sudo apt-get update
sudo apt-get --assume-yes install mumble-server
# Configure the mumble-server
sudo sed -i 's/^welcometext=.*$/welcometext="<br \/>Welcome to my awesome little mumble server!<br \/>"/' /etc/mumble-server.ini
murmurd -supw Password_of_your_choice
# Start the mumble-server service
sudo systemctl start mumble-server
