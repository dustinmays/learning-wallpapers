# Learning Wallpapers

A small, versioned toolkit for making educational reference images that can live as rotating Mac desktop wallpapers.

This repository stores the reusable parts of the workflow—agent instructions, skills, topic prompts, and optional helper scripts. It does **not** store generated wallpapers. Finished images are added manually to a shared Apple Photos album, where iCloud handles syncing between Macs.

## Why this setup is intentionally simple

The primary workflow uses image generation already available in OpenAI products such as ChatGPT or Codex. A ChatGPT subscription and OpenAI API usage are billed separately, so this starter repository does not require an API key, `.env` file, provider SDK, or generation CLI.

If automated API generation becomes worthwhile later, provider-specific scripts can be added under `scripts/` without changing the prompt and skill library.

## Repository layout

```text
.
├── agents/
│   └── learning-wallpaper-designer.md
├── prompts/
│   ├── README.md
│   └── _template.md
├── scripts/
│   └── README.md
└── skills/
    ├── generate-learning-wallpaper/
    │   ├── SKILL.md
    │   └── agents/openai.yaml
    └── review-learning-wallpaper/
        ├── SKILL.md
        └── agents/openai.yaml
```

Local generated files belong in `outputs/`, which is ignored by git.

## Basic workflow

1. Copy `prompts/_template.md` to a descriptive topic filename.
2. Add the facts, exact wording, layout needs, and visual direction worth preserving.
3. Ask an OpenAI agent with image generation to use `generate-learning-wallpaper` and the topic prompt.
4. Run `review-learning-wallpaper` against the rendered image.
5. Save an accepted image to Apple Photos manually and add it to the shared wallpaper album.
6. Commit the prompt improvements so both Macs share the reusable recipe.

## Using the skills

The folders follow the Codex `SKILL.md` convention. They can be invoked from this repository by an agent that can read local files, or copied/symlinked into that tool's personal skills directory when automatic discovery is preferred.

The skills are deliberately minimal in this first scaffold. The next step is to refine the generation and review logic with real wallpaper examples rather than prematurely building a large provider abstraction.

## Syncing the toolkit

Use git/GitHub to sync this repository between Macs. Use Apple Photos/iCloud only for the generated wallpapers. Keeping those concerns separate prevents large binary files from bloating git history.

To create and push a private GitHub repository with GitHub CLI:

```bash
gh repo create learning-wallpapers --private --source=. --remote=origin --push
```

On the second Mac:

```bash
git clone git@github.com:YOUR-GITHUB-USER/learning-wallpapers.git
```

## Principles

- Version prompts and instructions, not generated images.
- Treat supplied facts as authoritative; do not invent filler.
- Prefer a few readable panels over dense poster-sized text.
- Review the rendered image for text and factual errors before accepting it.
- Keep API integrations optional.
