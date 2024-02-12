
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

_____________________________________________________

Loras:

Every LoRA that is build to function on anyV3 or orangeMixes, works on hassaku too. Some can be found here, here or on civit by lottalewds, Trauter, Your_computer, ekune or lykon.

_____________________________________________________

Black result fix (vae bug in web ui): Use --no-half-vae in your command line arguments

I use a Eta noise seed delta of 31337 or 0, with a clip skip of 2 for the example images. Model quality mostly proved with sampler DDIM and DPM++ SDE Karras. I love DDIM the most (because it is the fastest).

ref: https://civitai.com/models/2583?modelVersionId=106922

# ---------------------------------------------------------------------------


## LORAs

# Mushoku Tensei Anime style LoRA
Should work fine at around weight 1 on AAM and AnyLoRA ckpt. Use mushoku tensei style to increase fidelity, use anime coloring to force flatter colors (not needed on AAM). First 10 examples are generated using my new anime style model (AAM) as base.

Remember this is a style LoRA. To make characters accurately you need other networks too (but it can get pretty close with accurate descriptions).

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