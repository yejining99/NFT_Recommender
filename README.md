# NFT Recommendations with Multi-Modal Multi-Task Learning and Attention Mechanism

This repository contains code for training a neural network model for NFT recommendations using multi-modal multi-task learning and attention mechanism.

## Installation
1. Clone the repository:
```python
git clone https://github.com/your-username/nft-recommendations.git
cd nft-recommendations
```

2. Install the required packages:
```python
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.13.0+cu116.html
pip install matplotlib torchcontrib
pip install numpy
```

## Files
- DataLoad.py: contains the data loader for the dataset.
- GraphGAT.py: contains the Graph Attention Network (GAT) model architecture.
- Model_attention.py: contains the multi-modal multi-task learning and attention mechanism model architecture.
- README.md: contains the instructions and information about the repository.
- run.sh: contains the shell script for running the model training and evaluation.
- train.py: contains the script for training the model.

## Usage
To train the model, simple run the 'run.sh' script:
```python
bash run.sh
```

you can also modify the default arguments by adding the relevant flags and values after the command:
```python
bash run.sh --batch_size 1024 --num_epoch 100 --l_r 1e-5
```

The available arguments are:
- --no-cuda: Disables CUDA training. (default: False)
- --model_name: Model name. (default: MGAT)
- --data_path: Dataset path. (default: dataset/bayc/)
- --PATH_weight_load: Loading weight filename. (default: None)
- --PATH_weight_save: Writing weight filename. (default: model/)
- --l_r: Learning rate. (default: 1e-4)
- --weight_decay: Weight decay. (default: 0)
- --batch_size: Batch size. (default: 2048)
- --dim_latent: Latent dimension. (default: 64)
- --num_epoch: Epoch number. (default: 200)
- --num_workers: Workers number. (default: 0)
- --reg_parm: Regularization parameter. (default: 0.001)
- --neg_sample: Negative sample ratio. (default: 5)
- --loss_alpha: Alpha value for loss. (default: 0)
- --number: Number for identification purposes. (default: 0)
- --optim: Optimizer to use. (default: Adam)

