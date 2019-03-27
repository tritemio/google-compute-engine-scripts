GCE Notes
---------

- Start with the image `'pytorch-latest-gpu'`
- Update and install packages:

```
conda upgrade fastai -c fastai
pip install tensorflow-gpu==2.0.0-alpha0

conda install -c conda-forge jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
```

## Tensorboard

It is possible to run tensorboard on the VM and access its interface,
similarly to how we access the notebook interface.

- Launch `tensorboard --logdir=logs &`, then use
  run `ssh_tunnel_tensorboard.sh` to forward the remote tensorboard
  to a local machine (using ssh port forwarding).

### More info on tensorboard on the cloud

The port-forwarding approach is used for Jupyter, but can be used
with anything else, like tensorboard. If you can ssh to the server
you can see tensorboard, without changing firewall rules.

- https://coderwall.com/p/ohk6cg/remote-access-to-ipython-notebooks-via-ssh

These are alternative approaches of opening port 6006 on the VM to external connections:

- https://stackoverflow.com/questions/43711110/google-cloud-platform-access-tensorboard
- https://stackoverflow.com/questions/33836728/view-tensorboard-on-docker-on-google-cloud
