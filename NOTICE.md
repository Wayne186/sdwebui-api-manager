
## Checkpoints

# AAM - AnyLoRA Anime Mix - Anime Screencap Style Model
suggested settings:

Set the ETA Noise Seed Delta (ENSD) to 31337

Set CLIP Skip to 2

DISABLE face restore. It's terrible, never use it

Use negative prompts and embeddings that don't ruin the style

Use AnimeVideo or Foolhardy as upscalers. If you know what to do, Latent makes an interesting effect (see the first example and the Miku one)

(optional to reproduce some results) Set "Do not make DPM++ SDE deterministic across different batch sizes." Only my old images use that.
(this setting is not actually good, so I'm gonna disable it, but might be the reason some results are different)

ref: https://civitai.com/models/84586/aam-anylora-anime-mix-anime-screencap-style-model

# AnyLoRA 

Just make sure you use CLIP skip 2 and booru style tags when training.

Remember to use a good vae when generating, or images wil look desaturated. I suggest WDVae or FTMSE. 

ref: https://civitai.com/models/23900/anylora-checkpoint

# Hassaku

Using the model:

Use mostly danbooru tags. No extra vae needed. For better promting on it, use this LINK or LINK. But instead of {}, use (), stable-diffusion-webui use (). Use "masterpiece" and "best quality" in positive, "worst quality" and "low quality" in negative.

My negative ones are: (low quality, worst quality:1.4) with extra monochrome, signature, text or logo when needed.

Use a clip skip 1 or 2. Clip 2 is better for private parts, img2img and prompt following. Clip 1 is visually better, because i assume, the model has more time and freedom there. I use clip2.

Don't use face restore and underscores _, type red eyes and not red_eyes.

Don't go to really high resolutions. Every model, like hassaku, get lost in the vastness of big images and has a much higher chance to greate, as example, a second anus.

ref: https://civitai.com/models/2583?modelVersionId=106922

_____________________________________________________

Loras:

Every LoRA that is build to function on anyV3 or orangeMixes, works on hassaku too. Some can be found here, here or on civit by lottalewds, Trauter, Your_computer, ekune or lykon.

_____________________________________________________

Black result fix (vae bug in web ui): Use --no-half-vae in your command line arguments

I use a Eta noise seed delta of 31337 or 0, with a clip skip of 2 for the example images. Model quality mostly proved with sampler DDIM and DPM++ SDE Karras. I love DDIM the most (because it is the fastest).

ref: https://civitai.com/models/2583?modelVersionId=106922


# ---------------------------------------------------------------------------


## LORAs

# Detail Tweaker LoRA （细节调整）
This is a LoRA for enhancing/diminishing detail while keeping the overall style/character; it works well with all kinds of base models (incl anime & realistic models)/style LoRA/character LoRA, etc.

Apply your own weight; this LoRA can be utilized for any weight up/down to 2/-2!

Note: use a negative weight to reduce details!

# Classic Anime Expressions
Backgrounds are a bit finicky. Sometimes, it zooms out very far for no reason when you prompt for a background, especially on lower resolutions.

These are the expressions (and also the trigger words):

>_<

@_@

ref: https://civitai.com/models/25613/classic-anime-expressions

# Thicker Lines Anime Style LoRA Mix（粗沟边动画风格）
本LoRA模型是为解决多数动漫风格模型过于柔和导致描线较弱的问题而训练的。基于风格化的图片训练，并与我此前训练的多个LoRA模型进行了融合而成。

示例图片为Anything V4.5 + orange mix VAE生成，但本LoRA并不限定基础模型的种类（包括NSFW类），并可兼容多数人物LoRA。

推荐强度为1.0。

附带的Checkpoint版本是和Anything V4.5融合的版本，用于一些更复杂的场景（如使用其他的画风LoRA）

ref: https://civitai.com/models/13910/thicker-lines-anime-style-lora-mix

# ---------------------------------------------------------------------------

# 无职转生风格化和角色包
Should work fine at around weight 1 on AAM and AnyLoRA ckpt. Use mushoku tensei style to increase fidelity, use anime coloring to force flatter colors (not needed on AAM). First 10 examples are generated using my new anime style model (AAM) as base.

Remember this is a style LoRA. To make characters accurately you need other networks too (but it can get pretty close with accurate descriptions).

ref: https://civitai.com/models/62950?modelVersionId=67458

# 粉毛败犬 
Weight: 0.9
Triggerwords: sakuramikuv1

Notes:

The hair ornament sometimes gets scuffed. Try manually adding cherry hair ornament manually.

The hair still turns blue/turquoise at times, so either negativeprompt aqua hair or just prompt for pink hair.

ref: https://civitai.com/models/86941/sakura-miku-cherry-blossom-hatsune-miku-character

# 食戟之灵角色包
角色列表常见 civitai link 

Txt2Img and Upscale settings:

DPM++ SDE Karras - 0.2: EULA A

Steps: 20

480x720

CFG: 7

LoRA Strengh: 0.6 - 0.2: 0.4-0.6

Upscale: 2x

Denoise: 0.6

Upscaler: Latent

ref: https://civitai.com/models/24814/food-wars-girlpack-36-lora

# SAO 刀剑神域角色包
角色列表常见 civitai link 

Infos
Clip Skip: 1 - 2 wont work!

Trigger: See "Girl List" below

Train Image Size: 768x768

Samples in Gallery Below - Because 20 Image Limit :/

SD Version: 1.5

Clip-Skip: 1 - so no NAI!

ref: https://civitai.com/models/23707/sword-art-online-girlpack-lora-40

# ---------------------------------------------------------------------------

# Deep throat
LoRA trained to generate deepthroat from pov with and without hands on the head. It was not trained in any other position.

Trigger: deepthroat

Other useful tags: pov hands, head grab, grabbing another's head, penis, fellatio.

# Downblouse
Trained on Downblouse images, leaning forward.

Additional Prompts keywords - nip slip, extended_downblouse, all fours, t-shirt, leaning forward, visible nipple, NSFW

# Female Masturbation
How to use. Trigger: female masturbation

To increase the effect in certain models you can also add one of these tags: covering crotch, crotch, fingering, masturbation.

# Breast lift
weights 0.6 - 1.0

recommended tags: Breast_lift <-- (seems to help a lot )

# Bukkake / excessive cum
Simple LoRA trained to generate bukkake / excessive cum.

Use any cum-related tags to trigger the effect. Recommended tags to use: cum, bukkake, excessive cum, facial, cum on body, cum on breasts, liquid, suggestive fluid, cumdrip, cum string, cum everywhere, cumshot, cum pool etc.

# Spread pussy
v1.1 Added image clitoris while standing
To spread more pussy just use tag : cervix

# Uncensored concept (female) https://civitai.com/models/216652/uncensored-concept-female?modelVersionId=244161
Main trigger:

pussy (for pussy with hood, not major focus), spread pussy (lightly opened up pussy, hands may be involved, the les most likely will spread as well), cervix (open up more than spread pussy, so you can see the interior, and the the cute cervix), cleft of venus (I didn't focus on this tag, mostly just give you no hood pussy, most nsfw models can already do that with no problem, it's a curved line representing pussy). If your base model understands these some other way, use underscore instead of space between words. Using them together may have unexpected result.

Roll the dice trigger:

uncensored

Focus trigger:

close-up (it will only work with spread pussy and cervix)

Other:

You can also get creative and use words like uretha, clitoris, anus, and etc.. They're all capped in the caption files, whichever helps you to get the perfect thing you want.
