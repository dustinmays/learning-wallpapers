---
name: review-learning-wallpaper
description: Inspect an educational wallpaper for misspellings, garbled labels, incorrect facts or numbers, weak hierarchy, cropping, and poor desktop readability. Use after generating or editing a learning wallpaper and before the user accepts it or adds it to Apple Photos.
---

# Review Learning Wallpaper

Review the actual rendered image, not only its source prompt.

## Draft workflow

1. Compare every visible claim, number, and required label with the source facts.
2. Transcribe questionable text exactly enough to identify misspellings or image-generation artifacts.
3. Check hierarchy, contrast, spacing, safe margins, and readability at desktop-wallpaper scale.
4. Report issues as `blocking`, `worth fixing`, or `optional`.
5. Accept the image only when no factual or text-integrity issue remains.

If the image fails, recommend the smallest prompt or layout change likely to correct it.
