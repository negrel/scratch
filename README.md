# `scratch` - Quickly scratch project in your favorite language.

## Getting started

You must have [Nix](https://nixos.org/download.html) package manager installed and enable experimental support of `nix-command` and `flakes`.

This tool is based on [flakes registries](https://nixos.org/manual/nix/unstable/command-ref/new-cli/nix3-registry.html) and
[flakes templates](https://nixos.org/manual/nix/unstable/command-ref/new-cli/nix3-flake-init.html#template-definitions).

You can configure your own template registry with:
```shell
# Add your registry.
nix registry add templates github:<username>/<repository>

# Update your registry.
nix flake update templates
```

> **NOTE**: You can use [my repository](https://github.com/negrel/templates) as a starting point.

## Create a project from a template

```shell
# Create a new project under "/tmp/scratch-rust-project" using the "rust" template.
scratch rust /tmp/scratch-rust-project

# Print help menu
scratch --help
```

## Contributing
If you want to contribute to `scratch` to add a feature or improve the code contact me at [negrel.dev@protonmail.com](mailto:negrel.dev@protonmail.com), open an [issue](https://github.com/negrel/scratch/issues) or make a [pull request](https://github.com/negrel/scratch/pulls).

## :stars: Show your support
Please give a :star: if this project helped you!

[![buy me a coffee](.github/bmc-button.png)](https://www.buymeacoffee.com/negrel)

## :scroll: License

MIT © [Alexandre Negrel](https://www.negrel.dev/)
