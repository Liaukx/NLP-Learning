用transformers 运行清博第一名方案
# 下载model
chinese_L-12-H-786_A-12
roberta
wwm
wwm_ex
# 运行
* 预处理
cd data_final/task1/
	$ python preproces.py
cd data_final/task2/
	$ python preproces.py
* 预训练
运行 pretrain/pre_run.sh
* 微调
运行 pretrain/fused.sh
* 生成每个model的预测结果
task1:
运行 ./run_bert.py
task2:
运行 ./run_bert_cls3.py
* 融合
cd Model_file
	$ python F1.py
	$ python F2.py




 
