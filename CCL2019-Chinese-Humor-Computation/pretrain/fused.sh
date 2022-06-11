python finetune_on_pretrain.py \
--pregenerated_data ./pytorchmodeltask12_bert_1005 \
--output_dir ./pytorchmodeltask12_bert_1005 \
--bert_model ./chinese_model/bert/

python finetune_on_pretrain.py \
--pregenerated_data ./pytorchmodeltask12_bert_wwm_1005 \
--output_dir ./pytorchmodeltask12_bert_wwm_1005 \
--bert_model ./chinese_model/bert_wwm/ 

python finetune_on_pretrain.py \
--pregenerated_data ./pytorchmodeltask12_bert_wwm_ex_1005 \
--output_dir ./pytorchmodeltask12_bert_wwm_ex_1005 \
--bert_model ./chinese_model/bert_wwm_ex/

python finetune_on_pretrain.py \
--pregenerated_data ./pytorchmodeltask12_robert_1005 \
--output_dir ./pytorchmodeltask12_robert_1005 \
--bert_model ./chinese_model/robert/     

python finetune_on_pretrain.py \
--pregenerated_data ./cclhumortaskalldata_bert_1005 \
--output_dir ./cclhumortaskalldata_bert_1005 \
--bert_model ./chinese_model/bert/   


python finetune_on_pretrain.py \
--pregenerated_data ./cclhumortaskalldata_bert_wwm_1005 \
--output_dir ./cclhumortaskalldata_bert_wwm_1005 \
--bert_model ./chinese_model/bert_wwm/   


python finetune_on_pretrain.py \
--pregenerated_data ./cclhumortaskalldata_bert_wwm_ex_1005 \
--output_dir ./cclhumortaskalldata_bert_wwm_ex_1005 \
--bert_model ./chinese_model/bert_wwm_ex/

python finetune_on_pretrain.py \
--pregenerated_data ./cclhumortaskalldata_robert_1005 \
--output_dir ./cclhumortaskalldata_robert_1005 \
--bert_model ./chinese_model/robert/ 
