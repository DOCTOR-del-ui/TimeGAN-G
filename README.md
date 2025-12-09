# TimeGAN-pytorch

Pytorch implementation of the paper [Time-series Generative Adversarial Networks](https://papers.nips.cc/paper/2019/file/c9efe5f26cd17ba6216bbe2a7d26d490-Paper.pdf) presented at NeurIPS'19.

Jinsung Yoon, Daniel Jarrett


## Dependencies
- Python (>=3.7)
- Pytorch (>=1.7.0)


## References

[Official Tensorflow Implementation ](https://github.com/jsyoon0823/TimeGAN)

python train.py --data_name cmapsst1_norm_truth_48_train --seq_len 48 --module gru --hidden_dim 24 --num_layer 3 --iteration 50000 --batch_size 128 --metric_iteration 10