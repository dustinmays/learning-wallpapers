---
name: generate-learning-reference
description: Create a researched, reviewed educational reference from a topic, notes, or source material and route it to the appropriate artifact workflow. Use for learning references, reference documents, cheat sheets, Markdown study sheets, educational PDFs, reference images, infographics, desktop wallpapers, or combined document-and-image requests.
---

# Generate Learning Reference

Create the requested learning artifact with one shared factual brief and the smallest suitable output workflow.

## Route the request

- For a wallpaper, infographic, or reference image, invoke `$generate-learning-wallpaper` and then `$review-learning-wallpaper`.
- For a reference document or cheat sheet, create concise Markdown by default. Use the available document or PDF skill only when the user requests DOCX or PDF.
- For “both,” create the Markdown reference first, then derive the image’s exact wording and hierarchy from it.
- For an ambiguous “learning reference,” default to a concise Markdown reference sheet; add an image only when the request is clearly visual.

## Shared workflow

1. Read `AGENTS.md` and infer routine choices from its defaults.
2. Define the learning goal and intended audience. Ask only when ambiguity would materially change the artifact.
3. Gather source facts. Research unfamiliar or accuracy-sensitive claims using authoritative primary sources; do not invent filler.
4. Create `prompts/<topic-slug>.md` from `prompts/_template.md`. Separate source facts, exact wording, structure, display or document format, and style.
5. Produce the requested artifact under `outputs/`.
6. Review every claim, number, label, relationship, spelling, and formatting choice against the topic brief.
7. Correct blocking errors before delivery. Preserve source links in documents and the topic brief.

## Markdown reference default

Save `outputs/<topic-slug>.md` with this compact structure:

1. Title and one-sentence mental model
2. Three to five core concepts
3. A comparison, sequence, or decision guide when useful
4. One small concrete example
5. Common pitfalls or misconceptions
6. Primary sources

Optimize for scanning rather than exhaustive coverage. Use tables only when they make repeated comparisons materially clearer.

## Handoff

Report the artifact paths, source brief path, review outcome, and any assumptions. Keep `outputs/` ignored. Commit prompts and review records only when asked.
