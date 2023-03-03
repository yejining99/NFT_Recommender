#!/bin/bash
# collection마다 optimizer을 다르게 주는 코드
# number를 통해 각 파일을 구분해줌

# number=0
# for optim in Adam SGD Adam_SWA SGD_SWA
# do
#     python -u train.py \
#         --number $number \
#         --num_epoch 100 \
#         --dim_latent 128 \
#         --batch_size 2048 \
#         --weight_decay 0.1 \
#         --l_r 0 \
#         --data_path dataset/azuki/ \
#         --reg_parm 1e-5 \
#         --neg_sample 5 \
#         --PATH_weight_save model/azuki/ \
#         --loss_alpha 0.01 \
#         --optim $optim \
#         --model_name MMMO&
        
#     let number=$number+1
# done

# wait

number=0
for optim in Adam SGD Adam_SWA SGD_SWA
do
    python -u train.py \
        --number $number \
        --num_epoch 100 \
        --dim_latent 128 \
        --batch_size 2048 \
        --weight_decay 0.1 \
        --l_r 0 \
        --data_path dataset/bayc/ \
        --reg_parm 1e-5 \
        --neg_sample 5 \
        --PATH_weight_save model/bayc/ \
        --loss_alpha 0.01 \
        --optim $optim \
        --model_name MMMO&
        
    let number=$number+1
done

wait

number=0
for optim in Adam SGD Adam_SWA SGD_SWA
do
    python -u train.py \
        --number $number \
        --num_epoch 100 \
        --dim_latent 128 \
        --batch_size 2048 \
        --weight_decay 0.1 \
        --l_r 0 \
        --data_path dataset/coolcats/ \
        --reg_parm 1e-5 \
        --neg_sample 5 \
        --PATH_weight_save model/coolcats/ \
        --loss_alpha 0.01 \
        --optim $optim \
        --model_name MMMO&
        
    let number=$number+1
done

wait

number=0
for optim in Adam SGD Adam_SWA SGD_SWA
do
    python -u train.py \
        --number $number \
        --num_epoch 100 \
        --dim_latent 128 \
        --batch_size 2048 \
        --weight_decay 0.1 \
        --l_r 0 \
        --data_path dataset/doodles/ \
        --reg_parm 1e-5 \
        --neg_sample 5 \
        --PATH_weight_save model/doodles/ \
        --loss_alpha 0.01 \
        --optim $optim \
        --model_name MMMO&
        
    let number=$number+1
done

wait

number=0
for optim in Adam SGD Adam_SWA SGD_SWA
do
    python -u train.py \
        --number $number \
        --num_epoch 100 \
        --dim_latent 128 \
        --batch_size 2048 \
        --weight_decay 0.1 \
        --l_r 0 \
        --data_path dataset/meebits/ \
        --reg_parm 1e-5 \
        --neg_sample 5 \
        --PATH_weight_save model/meebits/ \
        --loss_alpha 0.01 \
        --optim $optim \
        --model_name MMMO&
        
    let number=$number+1
done

