python preprocess.py --train_corpus ./data_humor/cclhumortask12_bert.txt --bert_model ./chinese_model/bert/ --output_dir ./pytorchmodeltask12_bert_1005
python preprocess.py --train_corpus ./data_humor/cclhumortask12_bert.txt --bert_model ./chinese_model/bert_wwm/ --output_dir ./pytorchmodeltask12_bert_wwm_1005
python preprocess.py --train_corpus ./data_humor/cclhumortask12_bert.txt --bert_model ./chinese_model/bert_wwm_ex/ --output_dir ./pytorchmodeltask12_bert_wwm_ex_1005
python preprocess.py --train_corpus ./data_humor/cclhumortask12_bert.txt --bert_model ./chinese_model/robert/ --output_dir ./pytorchmodeltask12_robert_1005

python preprocess.py --train_corpus  ./data_humor/cclhumortaskalldata_bert.txt --bert_model ./chinese_model/bert/ --output_dir ./cclhumortaskalldata_bert_1005
python preprocess.py --train_corpus  ./data_humor/cclhumortaskalldata_bert.txt --bert_model ./chinese_model/bert_wwm/ --output_dir ./cclhumortaskalldata_bert_wwm_1005
python preprocess.py --train_corpus  ./data_humor/cclhumortaskalldata_bert.txt --bert_model ./chinese_model/bert_wwm_ex/ --output_dir ./cclhumortaskalldata_bert_wwm_ex_1005
python preprocess.py --train_corpus  ./data_humor/cclhumortaskalldata_bert.txt --bert_model ./chinese_model/robert/ --output_dir ./cclhumortaskalldata_robert_1005
