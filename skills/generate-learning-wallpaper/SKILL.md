---
name: generate-learning-wallpaper
description: Turn a topic, source notes, or a set of facts into a text-accurate educational desktop wallpaper using OpenAI image generation. Use when creating a new ambient-learning wallpaper, refining a saved wallpaper prompt, or adapting educational content to a desktop-friendly infographic layout.
---

# Generate Learning Wallpaper

Create a readable educational wallpaper from user-supplied facts and constraints.

## Draft workflow

1. Confirm the topic, learning goal, source facts, target display size, and visual preference.
2. Separate required wording from visual direction. Do not invent facts to fill space.
3. Design a restrained panel hierarchy with little text in each region and safe margins for desktop UI.
4. Save the reusable image prompt under `prompts/` before generating.
5. Use the available OpenAI image-generation capability to create the image.
6. Save working output under `outputs/`, then invoke `$review-learning-wallpaper` before acceptance.

Treat this as a starter workflow. Keep provider-specific API code out of the skill unless the user explicitly chooses API billing.
