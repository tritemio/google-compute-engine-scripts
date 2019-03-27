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

- Launch `tensorboard --logdir=logs &`, then use
  run `ssh_tunnel_tensorboard.sh` to connect the remote tensorboard
  to a local machine.
