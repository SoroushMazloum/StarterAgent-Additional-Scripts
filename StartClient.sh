#!/bin/bash
                                                              
echo "Starting player..."                                            
./start 127.0.0.1 . 1 &                                              
sleep 5                                                              
for((i = 2 ; i <= 12 ; i++)) do                                      
echo "Starting player..."                                            
./start 127.0.0.1 . $i &                                             
echo "Player is ready!   "                                           
sleep 0.1                                                            
done                                                                 

