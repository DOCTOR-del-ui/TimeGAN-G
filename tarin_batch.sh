#!/bin/bash

for i in 1 2 3 4; do
    for w in 48 96; do
        echo "Running: idx=$i, window=$w"
        
        python train.py \
            --data_name cmapsst${i}_norm_truth_${w}_train \
            --seq_len ${w} \
            --module gru \
            --hidden_dim 24 \
            --num_layer 3 \
            --iteration 50000 \
            --batch_size 128 \
            --metric_iteration 10
    done
done

echo "All tasks finished."
