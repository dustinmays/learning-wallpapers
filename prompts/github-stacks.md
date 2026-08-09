# GitHub Stacks

## Artifact

- Type: wallpaper
- Output filename: `outputs/github-stacks.png`

## Learning goal

Help a beginner understand the stacked pull-request mental model and use the core `gh stack` CLI commands in a normal day-to-day workflow.

## Source facts

- A stack is an ordered list of branches where each branch builds on the one below it; the bottom is based on a trunk branch such as `main`.
- When submitted, GitHub creates one pull request per branch and sets each PR's base to the branch below it, so reviewers see the diff for that layer.
- GitHub CLI uses the `gh stack` extension for creating, navigating, rebasing, submitting, syncing, and merging stacked pull requests.
- The current GitHub Docs page describes stacked pull requests as public preview and subject to change.
- Core beginner workflow: `gh stack init`, work and commit, `gh stack add <branch>`, `gh stack view`, `gh stack push`, `gh stack submit`, `gh stack rebase`, and `gh stack sync --prune`.
- Navigation semantics: `up` moves away from the trunk; `down` moves toward the trunk. `top`, `bottom`, and `trunk` jump to useful positions.
- If a rebase conflicts, resolve the files, stage them, and continue with `gh stack rebase --continue`; `gh stack rebase --abort` restores the pre-rebase state.
- The `gh-stack` extension requires GitHub CLI v2.0+ and is installed with `gh extension install github/gh-stack`.

Sources:

- https://github.com/github/gh-stack
- https://docs.github.com/en/pull-requests/how-tos/create-pull-requests/managing-stacked-pull-requests
- https://docs.github.com/en/github-cli

## Exact text

Title: `GitHub Stacks`
Subtitle: `Small PRs, layered reviews`

Why section:
- `Smaller diffs`
- `Focused reviews`
- `Work in layers`

Stack diagram labels:
- `main / trunk`
- `auth`
- `api`
- `ui`
- `bottom`
- `top`
- `up = away from main`
- `down = toward main`

Workflow commands:
- `gh stack init`
- `gh stack add <branch>`
- `gh stack view`
- `gh stack push`
- `gh stack submit`
- `gh stack rebase`
- `gh stack sync --prune`

Navigation commands:
- `gh stack up`
- `gh stack down`
- `gh stack top`
- `gh stack bottom`

UI labels:
- `Stack #42`
- `PR #101  auth  ← main`
- `PR #102  api   ← auth`
- `PR #103  ui    ← api`
- `Review each layer`

Footer note:
- `Public preview • feature may change`

## Visual structure

Create four restrained regions:

1. Header and why: title, subtitle, and three short benefit chips.
2. Main center diagram: a clear vertical layered stack from `main / trunk` at the bottom to `ui` at the top, with arrows and PR/base relationships.
3. Lower-left CLI workflow: a short numbered sequence with the seven core commands, grouped as start → build → share → maintain.
4. Lower-right GitHub UI card: a simplified browser-like stack view showing three stacked PR rows and the phrase `Review each layer`.

Keep all command text large, sparse, and legible. Do not include advanced commands such as `modify`, `link`, `merge`, API endpoints, or detailed keyboard shortcuts.

## Display

- Mac/display: 16:9 landscape desktop wallpaper
- Resolution or aspect ratio: 16:9, generous safe margins
- Areas to keep visually quiet: outer 7%, top 6%, upper-right region, bottom 8%

## Style direction

Calm premium technical infographic inspired by GitHub's visual language without copying the website. Deep charcoal/navy background, warm off-white typography, GitHub-purple and electric-blue accents, subtle green status highlights, thin connector lines, soft rounded cards, and restrained terminal/browser motifs. High contrast and beginner-friendly. Avoid dense documentation, decorative noise, tiny text, or a literal screenshot.

## Revision notes

- Omit the previously considered agent/MCP section; keep the audience human-focused.
- Prefer a conceptual GitHub UI card over a detailed or potentially stale screenshot.
