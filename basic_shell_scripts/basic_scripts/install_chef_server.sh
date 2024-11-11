#!/bin/bash

# Function to check if the system is Red Hat-based
is_redhat() {
    if [[ -f /etc/redhat-release ]]; then
        return 0
    else
        return 1
    fi
}

# Function to check if the system is Ubuntu-based
is_ubuntu() {
    if [[ -f /etc/lsb-release ]]; then
        return 0
    else
        return 1
    fi
}

# Function to download and install Chef Server on Red Hat-based systems
install_chef_redhat() {
    echo "Detected Red Hat-based system. Starting Chef Server installation..."
    curl -L https://packages.chef.io/files/stable/chef-server/14.12.3/el/7/chef-server-core-14.12.3-1.el7.x86_64.rpm -o chef-server.rpm
    if [[ $? -ne 0 ]]; then
        echo "Error: Failed to download Chef Server package for Red Hat."
        exit 1
    fi
    yum install -y chef-server.rpm
    if [[ $? -eq 0 ]]; then
        echo "Chef Server installed successfully on Red Hat."
    else
        echo "Error: Chef Server installation failed on Red Hat."
        exit 1
    fi
}

# Function to download and install Chef Server on Ubuntu-based systems
install_chef_ubuntu() {
    echo "Detected Ubuntu-based system. Starting Chef Server installation..."
    curl -L https://packages.chef.io/files/stable/chef-server/14.12.3/ubuntu/20.04/chef-server-core_14.12.3-1_amd64.deb -o chef-server.deb
    if [[ $? -ne 0 ]]; then
        echo "Error: Failed to download Chef Server package for Ubuntu."
        exit 1
    fi
    apt update
    apt install -y ./chef-server.deb
    if [[ $? -eq 0 ]]; then
        echo "Chef Server installed successfully on Ubuntu."
    else
        echo "Error: Chef Server installation failed on Ubuntu."
        exit 1
    fi
}

# Main installation function
install_chef_server() {
    if is_redhat; then
        install_chef_redhat
    elif is_ubuntu; then
        install_chef_ubuntu
    else
        echo "Error: Unsupported OS. This script only supports Red Hat and Ubuntu."
        exit 1
    fi
}

# Start Chef Server installation
install_chef_server

# Cleanup downloaded packages
rm -f chef-server.rpm chef-server.deb

