---
name: review-learning-wallpaper
description: Inspect an educational wallpaper or infographic for misspellings, garbled labels, incorrect facts or numbers, weak hierarchy, cropping, and poor desktop readability. Use after generating or editing any learning reference image and before the user accepts, shares, or adds it to Apple Photos.
---

# Review Learning Wallpaper

Review the actual rendered image, not only its source prompt.

## Workflow

1. Inspect the actual rendered image, not only its prompt.
2. Compare every visible claim, number, symbol, arrow direction, and required label with the topic brief.
3. Transcribe questionable text exactly enough to expose misspellings or generation artifacts.
4. Check hierarchy, contrast, spacing, cropping, topology clarity, safe margins, and readability at desktop scale.
5. Classify issues as `blocking`, `worth fixing`, or `optional`.
6. Treat every factual, relationship, number, and text-integrity error as blocking.
7. Recommend the smallest prompt or layout change likely to correct each blocking issue.
8. Reinspect the corrected render. Accept it only when no blocking issue remains.
9. Write `reviews/<topic-slug>.md` from `reviews/_template.md`, including the accepted output filename and reusable lessons.

Do not mark an image accepted merely because its composition is attractive.
