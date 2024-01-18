
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

# AnyLoRA 

Just make sure you use CLIP skip 2 and booru style tags when training.

Remember to use a good vae when generating, or images wil look desaturated. I suggest WDVae or FTMSE. 


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