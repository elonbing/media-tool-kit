#!/bin/bash
# These are some useful commands to pass as values in your controller script!
# //////////////////////////////

# Select Random File in Directory

# Select Most Recent File in Directory
RECENT_FILE_IN_DIR=ls -Art | tail -n 1

# Generate Random Number
RANDOM_NUM=echo $((1 + RANDOM % 10))

# ascii

hello=cat << "EOF"

                 .-""-.
                /      \
               /     (0 \______
               |         "_____)
               \        ,-----'
                \_    _/
                 /    \
                /      \
               /        \
              /          |
             /        :  |
            /     ;   :  |
   \\\     /  _.-'    :  |
    \\\\  / _'        :  |
     \\\\/ ;         :   /
      \\  ;         :   /
       \   `._`-'_.'  _/
        \     ''' _.-'
         \      / /
          \    / /
           \  /)(_______
            )(_________<
           (__________<
EOF
