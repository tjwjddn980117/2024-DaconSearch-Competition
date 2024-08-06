rem you should change the root with your own environment path root.
rem and you could change the ENV_NAME with your one vitual environment.

set root=C:\Users\Seo\anaconda3
set ENV_NAME=Search_Baseline


if not exist "%root%" (
    echo check the root please: %root%
    pause
    exit
)

call %root%\Scripts\activate.bat %root%

echo make the virtual environment '%ENV_NAME%'
call conda create -y -n %ENV_NAME% python=3.10

echo enter the virtual environment.
call conda activate %ENV_NAME%

echo start downloading environment for %ENV_NAME%.
call conda install -y pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
call conda install -y conda-forge::tqdm conda-forge::torchinfo
call pip install accelerate
call pip install -i https://pypi.org/simple/ bitsandbytes
call pip install transformers[torch] -U

call pip install datasets
call pip install langchain
call pip install langchain_community
call pip install PyMuPDF
call pip install sentence-transformers
call pip install faiss-cpu
call python -m pip install bitsandbytes --prefer-binary --extra-index-url=https://jllllll.github.io/bitsandbytes-windows-webui
call pip install peft
call pip install trl
call pip install wandb

call conda deactivate

echo complete. 