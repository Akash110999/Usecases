#!/bin/bash -x

counter=0
Fruits[((counter++))]=apple
Fruits[((counter++))]=banana
Fruits[((counter++))]=kiwi

echo ${Fruits[@]}
echo ${Fruits[2]}
echo ${Fruits[0]}
echo ${Fruits[1]}
echo ${Fruits[4]}




