# Royalty Client

A customizable Minecraft launcher. Royalty Client installs, updates and starts your client together with Minecraft, the mod loader, Java and your mods.

> Royalty Client is a modified version of [LiquidLauncher](https://github.com/CCBlueX/LiquidLauncher) by CCBlueX, released under the GPL-3.0. Original copyright notices are kept in the source files. See `NOTICE.md`.

## Features

- Microsoft account login, automatic Java and Minecraft installation
- Build selection, mod management and marketplace
- **Appearance tab** (Settings > Appearance): theme presets, accent / background / danger colors, window and panel opacity, corner roundness, blur, custom background image, news panel on/off, launch panel left/right and width, theme export/import
- Themes are saved locally and applied instantly

## Build

Requires [Rust](https://www.rust-lang.org/tools/install), [Bun](https://bun.sh) and the [Tauri prerequisites](https://tauri.app/start/prerequisites/).

```bash
bun install
bun run tauri dev      # development
bun run tauri build    # installers in src-tauri/target/release/bundle
```

## Configuration to do before publishing

- Replace `YOUR-USER/RoyaltyClient` (README, `Cargo.toml`, packaging files, `SocialBar.svelte`) with your own repository and links.
- The self-updater is **disabled by default**. To enable it, set your own `plugins.updater.endpoints` and `pubkey` in `src-tauri/tauri.conf.json`, enable `createUpdaterArtifacts`, then run with `ROYALTYCLIENT_ENABLE_UPDATE=1`.
- The launcher still talks to the LiquidBounce API (`api.liquidbounce.net`, `api.ccbluex.net`) for builds, news and the marketplace; those services belong to CCBlueX.

## License

This project is subject to the [GNU General Public License v3.0](LICENSE). This does only apply for source code located directly in this clean repository. During the development and compilation process, additional source code may be used to which we have obtained no rights. Such code is not covered by the GPL license.

For those who are unfamiliar with the license, here is a summary of its main points. This is by no means legal advice nor legally binding.

You are allowed to

- use
- share
- modify

this project entirely or partially for free and even commercially. However, please consider the following:

- **You must disclose the source code of your modified work and the source code you took from this project. This means you are not allowed to use code from this project (even partially) in a closed-source (or even obfuscated) application.**
- **Your modified application must also be licensed under the GPL**

Do the above and share your source code with everyone; just like we do.

## Icons

We use [Clarity Line Icons](https://www.svgrepo.com/collection/clarity-line-icons/) for this project.

## Compile it yourself!

Royalty Client is using Tauri and is written in the programming language Rust, so make sure that it is installed properly. Instructions can be found on [Rust's website](https://www.rust-lang.org/learn/get-started). It also requires NodeJS and bun.

```sh
git clone --recurse-submodules https://github.com/YOUR-USER/RoyaltyClient
cd Royalty Client
bun install && bun run build
bun run tauri dev    # start the launcher
bun run tauri build  # or build it
```

## Contributing

We appreciate contributions. So if you want to support us, feel free to make changes to Royalty Client's source code and submit a pull request.

## Commits

`type(scope): subject`, lowercase, no trailing period.

`feat` `fix` `refactor` `chore` `docs`

Add a short body when the subject alone leaves the next reader guessing.
