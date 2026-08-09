# Learning Wallpapers

A small, versioned toolkit for making educational reference documents and images, including rotating Mac desktop wallpapers.

This repository stores the reusable parts of the workflow—agent instructions, skills, topic prompts, and optional helper scripts. It does **not** store generated wallpapers. Finished images are added manually to a shared Apple Photos album, where iCloud handles syncing between Macs.

## Why this setup is intentionally simple

The primary workflow uses image generation already available in OpenAI products such as ChatGPT or Codex. A ChatGPT subscription and OpenAI API usage are billed separately, so this starter repository does not require an API key, `.env` file, provider SDK, or generation CLI.

If automated API generation becomes worthwhile later, provider-specific scripts can be added under `scripts/` without changing the prompt and skill library.

## Repository layout

```text
.
├── .agents/
│   └── skills/
│       ├── generate-learning-reference/
│       ├── generate-learning-wallpaper/
│       └── review-learning-wallpaper/
├── agents/
│   └── learning-wallpaper-designer.md
├── prompts/
│   ├── README.md
│   └── _template.md
├── reviews/
│   └── _template.md
├── scripts/
│   └── README.md
└── outputs/ (ignored)
```

Local generated files belong in `outputs/`, which is ignored by git.

## Basic workflow

1. Open a new session in this repository and name the topic and desired artifact.
2. Let `$generate-learning-reference` create the topic brief and route to a document or image workflow.
3. Review the artifact; images must pass `$review-learning-wallpaper` before acceptance.
4. Save accepted wallpapers to Apple Photos manually when desired.
5. Commit prompt and review improvements so both Macs share the reusable recipe.

## Fast starts

Reference image:

> Create a learning wallpaper comparing `<A>`, `<B>`, and `<C>`. Use `$generate-learning-reference` and the repository defaults. Research primary sources, save the prompt, generate the image, review the rendered text, and correct blocking issues. Do not use visual references unless I provide one.

Reference document:

> Create a concise reference document about `<topic>` for `<audience>`. Use `$generate-learning-reference` and the repository defaults. Research primary sources, save the reusable brief, and review every claim before delivery.

Both:

> Create a concise reference document and matching learning wallpaper about `<topic>`. Use `$generate-learning-reference`; derive both artifacts from one sourced topic brief and review the final image.

## Using the skills

The discoverable workflows live under `.agents/skills/` and follow the Codex `SKILL.md` convention. A fresh session in this repository can invoke them explicitly or match them from the request.

`AGENTS.md` supplies defaults so a fresh session can proceed without asking routine display, audience, style, or storage questions.

## Development environment

The repository uses `mise` to pin Python and create an isolated `.venv` for skill validation.

```bash
mise install
mise run validate
```

`mise run validate` installs the small development dependency set and validates every skill under `.agents/skills/`.

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
