#!/bin/bash

download_item(){
    curl -o "${location}" "${url}"
}

read -p "give the url source to download the item: " url
read -p "give the location to store the downloaded item: " location

download_item "${url}" "${location}"