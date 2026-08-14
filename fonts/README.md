# Fonts

This project uses the following fonts, referenced in `pubspec.yaml` but **not**
committed to version control:

- `Futura-Book.ttf`, `Futura-Bold.ttf`
- `ProximaNova-Regular.ttf`, `ProximaNova-Bold.ttf`
- `IBMPlexMono-Regular.ttf`, `IBMPlexMono-Bold.ttf`

## Why the font files aren't in the repo

Futura and Proxima Nova are commercial typefaces. Their licences are
typically sold per-user/per-machine (desktop licences) or per-domain/per-page-view
(web licences), and generally do **not** permit redistributing the font files
themselves — including via a public (or even private-but-widely-shared) source
control repository. Committing these files would count as redistribution and
could breach the licence terms, regardless of whether this repository is
public or private, since anyone with repo access could extract and reuse the
files outside the scope of the licence.

IBM Plex Mono is released under the SIL Open Font License 1.1, which does
permit redistribution. It's excluded here anyway for consistency and to
avoid mixing licensing regimes in the same folder — it can safely be
committed separately if that's ever useful.

## What to do instead

- Keep the licensed `.ttf` files out of git (they're covered by `.gitignore`).
- Distribute them to collaborators through a private, access-controlled
  channel (e.g. shared drive, password manager, internal artifact storage) —
  not as build/commit artifacts.
- Confirm the number of licensed seats/machines covers everyone who needs the
  files before sharing them.
- If this repository is ever made public, double check no font files have
  been committed in earlier history. If they have, they'll need to be purged
  from git history entirely (not just removed from the latest commit), since
  git retains old blobs indefinitely.

## Setting up locally

Obtain the six `.ttf` files listed above from wherever your team stores
licensed assets and place them directly in this `fonts/` folder before
running the app — `pubspec.yaml` expects them at these exact paths.
