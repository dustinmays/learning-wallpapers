# Repository workflow

Use this repository to create calm, accurate learning references from a topic, notes, or source material.

## Default workflow

1. Use `$generate-learning-reference` for a new learning document, reference image, wallpaper, or combined request.
2. Research unfamiliar or accuracy-sensitive claims with authoritative primary sources. Treat supplied source facts as authoritative unless they conflict or are uncertain.
3. Save a reusable topic brief under `prompts/` before generating an artifact.
4. Save generated artifacts under `outputs/`. This directory is intentionally ignored by Git.
5. For an image, use `$generate-learning-wallpaper`, then `$review-learning-wallpaper`. Correct all blocking factual or text-integrity issues before delivery.
6. Record image review results under `reviews/` using `reviews/_template.md`.
7. Commit prompts and review records, not generated outputs, unless the user explicitly requests otherwise.

## Defaults

- Audience: a software engineer with general technical and DevOps familiarity.
- Image: 16:9 Mac wallpaper, spacious premium technical infographic, generous safe margins.
- Document: concise Markdown reference sheet; create PDF or DOCX only when requested.
- Research: primary or authoritative sources, with links retained in the topic brief and document.
- Density: three to five visual or conceptual regions; optimize for scanning and repeated exposure.
- Iteration: create an initial artifact, review it, then make the smallest targeted correction needed.
- References: do not inspect or imitate example images unless the user explicitly asks.
- Questions: infer routine choices from these defaults; ask only when missing information would materially change the result.

## Repository layout

- `.agents/skills/`: discoverable workflows
- `prompts/`: versioned topic briefs and generation prompts
- `reviews/`: versioned review records
- `outputs/`: ignored generated artifacts
- `agents/`: longer role definitions retained for human reference
