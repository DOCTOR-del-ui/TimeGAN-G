@echo off
setlocal enabledelayedexpansion

for %%i in (1 2 3 4) do (
    for %%w in (48 96) do (
        echo Running: idx=%%i, window=%%w
        python train.py ^
            --data_name cmapsst%%i_norm_truth_%%w_train ^
            --seq_len %%w ^
            --module gru ^
            --hidden_dim 24 ^
            --num_layer 3 ^
            --iteration 5000 ^
            --batch_size 128 ^
            --metric_iteration 10
    )
)

echo All tasks finished.
pause
