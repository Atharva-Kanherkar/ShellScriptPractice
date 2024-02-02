 #!/bin/bash

echo "Enter an IP address:"
read ip

if [[ $ip =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]
then
    echo "$ip is a valid IPv4 address."
else
    echo "$ip is not a valid IPv4 address."
fi
