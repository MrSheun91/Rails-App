#!/bin/bash

workspace=$1

console_error(){
	echo "Error: ${1}";
	exit 1;
}

validate_input(){
	if [ -z $workspace ]; then
		console_error 'Required arguments are missing. Build failed.'
	fi
}

validate_input
echo "Workspace: ${1}"

if [ -d './environments' ]; then
    echo 'environments folder already exists'
else mkdir environments

fi

cd ./environments/

if [ -d "./environments/${workspace}" ]; then
    echo "environments exists "
else mkdir ${workspace}
fi

cd ..

cp -v *.tf ./environments/${workspace}
cp -v *.tfvars ./environments/${workspace}/${workspace}.tfvars
