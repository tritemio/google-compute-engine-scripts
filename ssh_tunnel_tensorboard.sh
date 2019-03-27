!/bin/bash
#
# Bind a TensorBoard port on a Google Compute VM to a local port.
# Makes the remote TensorBoard accessible at a local URL, by using
# ssh port forwarding.
#
# USAGE:
# Launch tensorboard on the remote machine first.
# Run this script on the local machine, passing the remote IP.
#

IP=$1
LOCAL_PORT=8081
REMOTE_PORT=6006

# The first option -N tells SSH that no remote commands will be executed, 
# and is useful for port forwarding. The second option -f has the effect 
# that SSH will go to background, so the local tunnel-enabling terminal 
# remains usable. 
#
# See: https://coderwall.com/p/ohk6cg/remote-access-to-ipython-notebooks-via-ssh
ssh -N -f -L $LOCAL_PORT:localhost:$REMOTE_PORT jupyter@$IP -i ~/.ssh/google_compute_engine

echo -e "\nTensorBoard URL (CMD + double click to open):\n  \n http://localhost:$LOCAL_PORT/ \n"



