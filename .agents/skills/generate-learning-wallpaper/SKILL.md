---
name: generate-learning-wallpaper
description: Turn a topic, source notes, or a set of facts into a text-accurate educational desktop wallpaper using OpenAI image generation. Use when creating a learning wallpaper, educational infographic, visual reference image, ambient-learning background, or when refining a saved wallpaper prompt.
---

# Generate Learning Wallpaper

Create a readable educational wallpaper from user-supplied facts and constraints.

## Workflow

1. Read `AGENTS.md` and apply its defaults unless the user overrides them.
2. Establish the learning goal and source facts. Research unfamiliar or accuracy-sensitive claims with authoritative primary sources; retain source links in the topic brief.
3. Separate exact wording from visual direction. Do not invent facts or decorative labels to fill space.
4. Design three to five restrained visual regions with short text, strong topology or relationship cues, and desktop-safe margins.
5. Save the reusable topic brief and full generation prompt as `prompts/<topic-slug>.md` before generating.
6. Use the available built-in OpenAI image-generation capability. Do not assume API access or create provider code.
7. Save the working image as `outputs/<topic-slug>-draft-1.png` and inspect the actual render.
8. Invoke `$review-learning-wallpaper`. If it finds blocking issues, make the smallest targeted edit and review again.
9. Save an accepted image as `outputs/<topic-slug>.png` and record the result as `reviews/<topic-slug>.md` using `reviews/_template.md`.

## Default image profile

- Use a 16:9 landscape Mac wallpaper when display details are absent.
- Assume a technically literate software engineer audience.
- Use a calm premium technical-infographic style with generous spacing and high contrast.
- Keep the outer 7%, top 6%, upper-right region, and bottom 8% visually quiet.
- Prefer topology, flow, sequence, or comparison diagrams over decorative illustration.
- Use an initial generation plus one targeted correction when possible; continue only while blocking issues remain.
- Do not use example images unless the user explicitly requests them.

Keep provider-specific API code out of the skill unless the user explicitly chooses API billing.
