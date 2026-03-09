
conda create -n yolov9 python=3.10 -y

conda activate yolov9



# check cuda =====================
python
import torch
torch.cuda.is_available()
# ================================

pytorch -c nvidia

pip install -r requirements.txt 
#=========================================================================================

#!/usr/bin/env bash
set -e

# 0) (Optional) remove old env if it exists
# conda env remove -n yolov9 -y || true

# 1) Create and activate conda env with Python 3.10
conda create -n yolov9 python=3.10 -y  # creates env [web:138]
conda activate yolov9

# 2) Install GPU PyTorch (CUDA 11.8) via pip
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118  # GPU build [web:52][web:131]

# 3) Install YOLOv9 project requirements (from repo)
cd ~/Desktop/Raw_Yolo
pip install -r requirements.txt  # YOLOv9 deps, uses existing torch [web:22][web:25]

# 4) Quick sanity check
python -c "import torch; print(torch.__version__); print(torch.cuda.is_available()); print(torch.version.cuda)"  # verify GPU [web:52]
