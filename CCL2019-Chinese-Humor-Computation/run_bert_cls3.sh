export CUDA_VISIBLE_DEVICES=1

declare -a Out=("task2_bert_alldata_1005" "task2_bert_wwm_alldata_1005" "task2_bert_wwm_ex_alldata_1005" "task2_robert_alldata_1005")
declare -a StringArray=("./pretrain/cclhumortaskalldata_bert_1005" "./pretrain/cclhumortaskalldata_bert_wwm_1005" "./pretrain/cclhumortaskalldata_bert_wwm_ex_1005" "./pretrain/cclhumortaskalldata_robert_1005")
for((j=0;j<4;++j));do
# for val in ${StringArray[@]}; do
for((i=0;i<5;i++));  
do   
# $echo   ${StringArray[j]}
# $echo  ./Model_file/${Out[j]}
python run_bert_cls3.py \
--model_type bert \
--model_name_or_path ${StringArray[j]} \
--do_train \
--do_eval \
--do_test \
--data_dir ./data_final/task2/data_$i \
--output_dir ./Model_file/${Out[j]}/model_bert$i \
--max_seq_length 128 \
--split_num 1 \
--lstm_hidden_size 512 \
--lstm_layers 1 \
--lstm_dropout 0.1 \
--eval_steps 200 \
--per_gpu_train_batch_size 10 \
--gradient_accumulation_steps 1 \
--warmup_steps 0 \
--per_gpu_eval_batch_size 32 \
--learning_rate 2e-5 \
--adam_epsilon 1e-6 \
--weight_decay 0 \
--train_steps 6000
done
done  





