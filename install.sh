# apt is a command-line utility used for installing, updating, removing, and also managing deb packages on Ubuntu, Debian, and related Linux distributions. 
# apt is designed for interactive use.
apt update
apt install -y aria2
apt-get install python3-pip
apt install vim
apt-get install tmux

# pip or pip3 is a command line tool for installing Python 3 modules.
# install requirements.txt, which contains all the dependencies required for the project.
pip3 install -r requirements.txt

# git clone sd-webui
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
# git reset --hard 394ffa7

# ---------------------------------------------- 分割线 ---------------------------------------------- #

# essential sd-webui plugins
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/embed/upscale/resolve/main/4x-UltraSharp.pth -d ./stable-diffusion-webui/models/ESRGAN -o 4x-UltraSharp.pth
wget https://raw.githubusercontent.com/camenduru/stable-diffusion-webui-scripts/main/run_n_times.py -O ./stable-diffusion-webui/scripts/run_n_times.py
git clone https://github.com/camenduru/stable-diffusion-webui-images-browser ./stable-diffusion-webui/extensions/stable-diffusion-webui-images-browser
git clone https://github.com/camenduru/sd-civitai-browser ./stable-diffusion-webui/extensions/sd-civitai-browser
git clone https://github.com/kohya-ss/sd-webui-additional-networks ./stable-diffusion-webui/extensions/sd-webui-additional-networks
git clone https://github.com/Mikubill/sd-webui-controlnet ./stable-diffusion-webui/extensions/sd-webui-controlnet
git clone https://github.com/camenduru/sd-webui-tunnels ./stable-diffusion-webui/extensions/sd-webui-tunnels
git clone https://github.com/etherealxx/batchlinks-webui ./stable-diffusion-webui/extensions/batchlinks-webui
git clone https://github.com/camenduru/stable-diffusion-webui-catppuccin ./stable-diffusion-webui/extensions/stable-diffusion-webui-catppuccin
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui-rembg ./stable-diffusion-webui/extensions/stable-diffusion-webui-rembg
git clone https://github.com/ashen-sensored/stable-diffusion-webui-two-shot ./stable-diffusion-webui/extensions/stable-diffusion-webui-two-shot
git clone https://github.com/thomasasfk/sd-webui-aspect-ratio-helper ./stable-diffusion-webui/extensions/sd-webui-aspect-ratio-helper
# git clone https://github.com/nonnonstop/sd-webui-3d-open-pose-editor ./stable-diffusion-webui/extensions/sd-webui-3d-open-pose-editor
git clone https://github.com/continue-revolution/sd-webui-segment-anything.git ./stable-diffusion-webui/extensions/sd-webui-segment-anything

# additional sd-webui plugins
git clone https://github.com/richrobber2/canvas-zoom.git ./stable-diffusion-webui/extensions/canvas-zoom
git clone https://github.com/fkunn1326/openpose-editor.git ./stable-diffusion-webui/extensions/openpose-editor

git clone https://github.com/toriato/stable-diffusion-webui-wd14-tagger.git ./stable-diffusion-webui/extensions/stable-diffusion-webui-wd14-tagger
git clone https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git ./stable-diffusion-webui/extensions/a1111-sd-webui-tagcomplete
git clone https://github.com/Physton/sd-webui-prompt-all-in-one.git ./stable-diffusion-webui/extensions/sd-webui-prompt-all-in-one
git clone https://github.com/hanamizuki-ai/stable-diffusion-webui-localization-zh_Hans.git ./stable-diffusion-webui/extensions/stable-diffusion-webui-localization-zh_Hans
git clone https://github.com/AIrjen/OneButtonPrompt.git ./stable-diffusion-webui/extensions/OneButtonPrompt
git clone https://github.com/zanllp/sd-webui-infinite-image-browsing.git ./stable-diffusion-webui/extensions/sd-webui-infinite-image-browsing
git clone https://github.com/hako-mikan/sd-webui-regional-prompter.git ./stable-diffusion-webui/extensions/sd-webui-regional-prompter

# control net related
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11e_sd15_ip2p_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11e_sd15_shuffle_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_canny_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_canny_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11f1p_sd15_depth_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_inpaint_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_lineart_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_lineart_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_mlsd_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_normalbae_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_openpose_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_openpose_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_scribble_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_scribble_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_seg_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_seg_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15_softedge_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_softedge_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15s2_lineart_anime_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11f1e_sd15_tile_fp16.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11e_sd15_ip2p_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11e_sd15_ip2p_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11e_sd15_shuffle_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11e_sd15_shuffle_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_canny_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_canny_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11f1p_sd15_depth_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11f1p_sd15_depth_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_inpaint_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_inpaint_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_lineart_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_lineart_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_mlsd_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_mlsd_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_normalbae_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_normalbae_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_openpose_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_openpose_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_scribble_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_scribble_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_seg_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_seg_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15_softedge_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15_softedge_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11p_sd15s2_lineart_anime_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11p_sd15s2_lineart_anime_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/raw/main/control_v11f1e_sd15_tile_fp16.yaml -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o control_v11f1e_sd15_tile_fp16.yaml
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_style_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_style_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_sketch_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_sketch_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_seg_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_seg_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_openpose_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_openpose_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_keypose_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_keypose_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_depth_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_depth_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_color_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_color_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_canny_sd14v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_canny_sd14v1.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_canny_sd15v2.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_canny_sd15v2.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_depth_sd15v2.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_depth_sd15v2.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_sketch_sd15v2.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_sketch_sd15v2.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/ControlNet-v1-1/resolve/main/t2iadapter_zoedepth_sd15v1.pth -d ./stable-diffusion-webui/extensions/sd-webui-controlnet/models -o t2iadapter_zoedepth_sd15v1.pth

# ---------------------------------------------- 分割线 ---------------------------------------------- #

# basic sd-webui models
# aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/anything-v3.0/resolve/main/Anything-V3.0-pruned.ckpt -d ./stable-diffusion-webui/models/Stable-diffusion -o Anything-V3.0-pruned.ckpt
# aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/ckpt/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt -d ./stable-diffusion-webui/models/Stable-diffusion -o Anything-V3.0-pruned.vae.pt
# aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/xiaozaa/animaTest/resolve/main/animeoutlineV4_16.safetensors -d ./stable-diffusion-webui/models/Lora -o animeoutlineV4_16.safetensors

# AAM - AnyLoRA Anime Mix - Anime Screencap Style Model https://civitai.com/models/84586/aam-anylora-anime-mix-anime-screencap-style-model
# 自带动画大色块模型
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Lykon/AnyLoRA/resolve/main/AAM_Anylora_AnimeMix.safetensors -d ./stable-diffusion-webui/models/Stable-diffusion -o AAM_Anylora_AnimeMix.safetensors

# AnyLoRA - Checkpoint https://civitai.com/models/23900/anylora-checkpoint
# 中性动画模型
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Lykon/AnyLoRA/resolve/main/AnyLoRA_bakedVae_fp16_NOTpruned.safetensors -d ./stable-diffusion-webui/models/Stable-diffusion -o AnyLoRA_bakedVae_fp16_NOTpruned.safetensors

# Hassaku - Checkpoint https://civitai.com/models/2583?modelVersionId=106922
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/106922?type=Model -d ./stable-diffusion-webui/models/Stable-diffusion -o Hassaku.safetensors

# PornMaster - Checkpoint https://civitai.com/models/83930/pornmaster-anime 备用

# KohakuXL -Checkpoint https://civitai.com/models/162577/kohaku-xl-beta
# aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/192804?type=Model -d ./stable-diffusion-webui/models/Stable-diffusion -o KohakuXL_Beta7.safetensors

# AAMXL - Checkpoint https://civitai.com/models/269232 
# aria2c --console-log-level=error -c -x 16 -s 16 -k 1M  https://civitai.com/api/download/models/303526?type=Model -d ./stable-diffusion-webui/models/Stable-diffusion -o AAMXL.safetensors

# sd-webui embeding models
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/datasets/Nerfgun3/bad_prompt/resolve/main/bad_prompt_version2.pt -d ./stable-diffusion-webui/embeddings -o bad_prompt_version2.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/datasets/gsdf/EasyNegative/resolve/main/EasyNegative.pt -d ./stable-diffusion-webui/embeddings -o EasyNegative.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/nick-x-hacker/bad-artist/resolve/main/bad-artist.pt -d ./stable-diffusion-webui/embeddings -o bad-artist.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/embed/negative/resolve/main/bad-hands-5.pt -d ./stable-diffusion-webui/embeddings -o bad-hands-5.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/embed/negative/resolve/main/ng_deepnegative_v1_75t.pt -d ./stable-diffusion-webui/embeddings -o ng_deepnegative_v1_75t.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/embed/negative/resolve/main/EasyNegativeV2.safetensors -d ./stable-diffusion-webui/embeddings -o EasyNegativeV2.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/embed/negative/resolve/main/verybadimagenegative_v1.3.pt -d ./stable-diffusion-webui/embeddings -o verybadimagenegative_v1.3.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/embed/negative/resolve/main/bad-image-v2-39000.pt -d ./stable-diffusion-webui/embeddings -o bad-image-v2-39000.pt
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth -d ./stable-diffusion-webui/models/sam -o sam_vit_h_4b8939.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/20068?type=Model -d ./stable-diffusion-webui/embeddings -o badhandsv4.pt

# ---------------------------------------------- 分割线 ---------------------------------------------- #

# LORAs

# ---------------------------------- 工具 ---------------------------------- #

# 线稿
# aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/Sasulee/animeLineartMangaLike_v30MangaLike/resolve/main/animeLineartMangaLike_v30MangaLike.safetensors -d ./stable-diffusion-webui/models/Lora -o animeLineartMangaLike_v30MangaLike.safetensors

# 动画画风 Use at weight 1 on AnyLoRA
# aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/60568?type=Model&format=SafeTensor -d ./stable-diffusion-webui/models/Lora -o animemix_v3_offset.safetensors

# Detail Tweaker LoRA （细节调整） https://civitai.com/models/58390?modelVersionId=62833
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/62833?type=Model -d ./stable-diffusion-webui/models/Lora -o detail_tweaker.safetensors

# Classic Anime Expressions https://civitai.com/models/25613/classic-anime-expressions
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/30666?type=Model -d ./stable-diffusion-webui/models/Lora -o anime_expression.safetensors

# Thicker Lines Anime Style LoRA Mix（粗沟边动画风格） https://civitai.com/models/13910/thicker-lines-anime-style-lora-mix
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/16368?type=Model -d ./stable-diffusion-webui/models/Lora -o thinker_line_anim.safetensors

# ---------------------------------- 角色 ---------------------------------- #

# 无职转生风格化和角色包 https://civitai.com/models/62950?modelVersionId=67458
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/67458?type=Model -d ./stable-diffusion-webui/models/Lora -o mushoku_tense_style_offset.safetensors

# 粉毛败犬 https://civitai.com/models/86941/sakura-miku-cherry-blossom-hatsune-miku-character
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/92495?type=Model -d ./stable-diffusion-webui/models/Lora -o sakura_miku.safetensors

# 食戟之灵角色包 https://civitai.com/models/24814/food-wars-girlpack-36-lora
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/183562?type=Model -d ./stable-diffusion-webui/models/Lora -o food_war_chars.safetensors

# SAO 刀剑神域角色包 https://civitai.com/models/23707/sword-art-online-girlpack-lora-40
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/207942?type=Model -d ./stable-diffusion-webui/models/Lora -o sao_chars.safetensors

# ---------------------------------- HENTAI LORAs!!!! ---------------------------------- #

# deep throat https://civitai.com/models/94912/deepthroat-pov
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/101249?type=Model -d ./stable-diffusion-webui/models/Lora -o pov_deepthroat_v0.1.safetensors

# Downblouse https://civitai.com/models/10061/downblouse-for-boobs
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11964?type=Model -d ./stable-diffusion-webui/models/Lora -o downblouse-v1.safetensors

# 自卫 https://civitai.com/models/155172/female-masturbation
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/174016?type=Model -d ./stable-diffusion-webui/models/Lora -o female_masturbation_v0.5.safetensors

# Breast lift https://civitai.com/models/107878/breast-lift
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/116069?type=Model -d ./stable-diffusion-webui/models/Lora -o BreastLiftV8-000080.safetensors

# Bukkake / excessive cum https://civitai.com/models/109745/bukkake-excessive-cum
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/118273?type=Model -d ./stable-diffusion-webui/models/Lora -o bukkake_v0.4.safetensors

# Spread pussy https://civitai.com/models/11363/spread-pussy
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/25584?type=Model -d ./stable-diffusion-webui/models/Lora -o cervix.safetensors

# Uncensored concept (female) https://civitai.com/models/216652/uncensored-concept-female?modelVersionId=244161
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/244161?type=Model -d ./stable-diffusion-webui/models/Lora -o cervix.safetensors

sed -i -e '/    api = create_api/a\' -e '    modules.script_callbacks.before_ui_callback()' ./stable-diffusion-webui/webui.py
sed -i -e 's/\"sd_model_checkpoint\"\,/\"sd_model_checkpoint\,sd_vae\,CLIP_stop_at_last_layers\"\,/g' ./stable-diffusion-webui/modules/shared.py

cd ./stable-diffusion-webui
apt install python3.10-venv
python3.10 -m venv venv