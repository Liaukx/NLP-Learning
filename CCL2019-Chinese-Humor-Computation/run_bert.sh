export CUDA_VISIBLE_DEVICES=0
# "./pretrain/pytorchmodeltask12_bert_1005/" "./pretrain/pytorchmodeltask12_bert_wwm_1005/" "./pretrain/pytorchmodeltask12_bert_wwm_ex_1005/" 
declare -a Out=("task1_bert_alldata_1005" "task1_bert_wwm_alldata_1005" "task1_bert_wwm_ex_alldata_1005" "task1_robert_alldata_1005")
declare -a StringArray=("./pretrain/pytorchmodeltask12_bert_1005" "./pretrain/pytorchmodeltask12_bert_wwm_1005" "./pretrain/pytorchmodeltask12_bert_wwm_ex_1005" "./pretrain/pytorchmodeltask12_robert_1005")
for((j=2;j<3;++j));do
# for val in ${StringArray[@]}; do
for((i=0;i<5;i++));  
do   
# echo $val
python run_bert.py \
--model_type bert \
--model_name_or_path ${StringArray[j]} \
--do_train \
--do_eval \
--do_test \
--data_dir ./data_final/task1/data_$i \
--output_dir ./Model_file/${Out[j]}/model_bert$i \
--max_seq_length 80 \
--split_num 1 \
--lstm_hidden_size 512 \
--lstm_layers 1 \
--lstm_dropout 0.1 \
--eval_steps 300 \
--per_gpu_train_batch_size 24 \
--gradient_accumulation_steps 1 \
--warmup_steps 0 \
--per_gpu_eval_batch_size 32 \
--learning_rate 5e-6 \
--adam_epsilon 1e-6 \
--weight_decay 0 \
--train_steps 6000

done 
done 





