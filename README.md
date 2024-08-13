# 2024 Search Competition LLM project in Pytorch. 
The LLM model was used as the 2024 Deacon project.

After fetching the pre-trained model from the Hugging Face, 
 it was fine-tuned to suit our data through the SFT trainer. 
Parameters more detailed in the fine-tuning were fine-tuned using peft.

Data were obtained by crawling pdf files.

### Environment
OS: Windows10
HW: 5900X, RTX4080*1

### Requirements
The list for the library is as follows.
```bash
base_line_requirement.txt
```
If you are a Windows user, you only need to change the root address of the next bat file and run it.
```bash
base_line_requirement.bat
```
### Runs
The full code of the program can run the following ipynb file.
```bash
full_code.ipynb
```
If your vram is lacking, you can run the following files sequentially.
```bash
seo/0_Making_Embedding_db.ipynb
seo/1_Making_Embedding_CSV.ipynb
seo/2_Finetuning_and_Saving_Model.ipynb
seo/3_Loading_Finetuned_Model_and_Eval.ipynb
```