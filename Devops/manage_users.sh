#!/bin/bash 


#Reading through the usernames.csv file while keeping the format in check 
while IFS=',' read -r username group permission; do
    #Creating users and their home dir
    sudo useradd -m -d "/home/$username" "$username"
    #just for the sake of testing 
    echo "$username:$username" | sudo chpasswd 
    sudo groupadd $group 
    # Creating required groups 
    sudo usermod -aG $group $username
    
    # Set the home directory permissions
    sudo chmod $permission /home/$username
    
    #Creating projects dir under each user 
    sudo mkdir -p /home/$username/projects
    
    # Create the README.md file with notification msg 
    echo "Welcome, $username! ,Spider is a good club." > /home/$username/projects/README.md
    
    # Set permissions for the projects directory and README.md file
    sudo chown -R $username:$group /home/$username/projects
    sudo chmod 755 /home/$username/projects
    sudo chmod 644 /home/$username/projects/README.md
done < "usernames.csv"

echo "User creation and setup complete."