
# Releases (AI)

The [Package release workflow](.github/workflows/release.yml) attaches an installable
`SurvivalGames-<tag>.zip` to a GitHub release. The ZIP contains only `data/`,
`pack.mcmeta`, and `pack.png` when present, directly at the archive root.

## Versions and notes

Use the release title for the pack version, and include both the pack and Minecraft
versions in each tag. For example:

| Field | Example |
| --- | --- |
| Release title | `v1.0` |
| Tag | `v1.0-mc26.3` |
| ZIP filename | `SurvivalGames-v1.0-mc26.3.zip` |

A later pack update for the same Minecraft version can use `v1.1-mc26.3`.
Using only `26.3` as the tag also works, but that tag identifies just one release;
use a new tag for every pack update.

Write the release description in GitHub's release editor using Markdown:

```markdown
_Compatible with 26.3_

<release info here>
```

For multiple supported Minecraft versions, list the tested versions or range in
that compatibility line. Keep the numeric format fields in `pack.mcmeta` aligned
with those Minecraft versions' data pack formats; they are separate from the pack's
release version. The workflow packages `pack.mcmeta` as committed and does not
infer compatibility or rewrite the release title or notes.

## Publishing (AI)

1. Commit and push the pack and workflow. Put the workflow on the default branch
   to enable the **Run workflow** button.
2. Create a GitHub release, choose or create its tag at the commit to distribute,
   and enter the title and description above.
3. Publish the release. **Package release** builds from the release's tag and
   uploads the ZIP automatically, including for prereleases.

To attach or rebuild a ZIP for an existing release, go to **Actions > Package
release > Run workflow** and enter its exact tag in `release_tag`, such as `26.3`.
The selected tag supplies the pack files even when the workflow runs from another
branch. The release must already exist. Rerunning replaces the asset with the same
filename and leaves the title, notes, and other assets unchanged. The workflow
uses GitHub's built-in token; no additional secret is needed.

If the repository uses [immutable releases](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository),
create and push the tag first, save the release as a draft, run the manual workflow
to attach the ZIP, and then publish. Automatic packaging skips published immutable
releases because their assets can no longer be changed.

