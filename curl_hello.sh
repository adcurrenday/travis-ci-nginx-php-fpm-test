#!/bin/bash
base_url="http://localhost"
echo "does it work?"
echo "URL: $base_url/echo_hello.php?and=parameters" 
echo "raw:"
curl --silent "$base_url/echo_hello.php?and=parameters"
result=`curl --silent "$base_url/echo_hello.php?and=parameters"`

echo "result:"

if [ "$result" == "hello" ]
then
    echo "works!"
    exit 0;
fi

echo "failed :("
exit 1
