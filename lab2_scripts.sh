#!/bin/bash
# Author : John Etchason
# Date: 1/30/2019

#Problem 1 Code:
echo "Enter regex: "
read r
echo "Enter filename: "
read f
grep $r $f
#need to count all phonenumbers
echo "!!! There are this many 303 phone numbers: "
grep '[0-9]\{3\}[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' regex_practice.txt -c
#count number of emails
echo "!!! This many emails: "
grep '@' regex_practice.txt | grep '.' -c
#count number of 303 phonenumbers
echo "!!! Listing 303 phones."
grep '303[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' regex_practice.txt > phone_results.txt
#list all the emails ending in "@geocities.com"
echo "Writing list of @geocities.com emails."
grep '@geocities.com' regex_practice.txt > email_results.txt
# command line regex find
echo "searching for $1, writing to command_results.txt"
grep $1 regex_practice.txt > command_results.txt

