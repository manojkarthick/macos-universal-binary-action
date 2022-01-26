# macos-universal-binary-action

Github Action to create and upload macOS universal binaries

## Inputs

* `owner`: The username of the Github repository owner
* `repository`: The name of the Github repository
* `tag`: The Github release to download `amd64` and `arm64` binaries from. These binaries are combined into a universal binary and uploaded as an release asset to the same tag. By default, it uses the latest Github release.
* `amd64`: A substring can that can identify the arm64 binary from the various asets that are present in the selected Github release.
* `arm64`: Similar to the `amd64` substring, this one identifies the `arm64` binary.
* `compressed`: Whether the assets in the github release are compressed or not. If they are compressed, they are automatically uncompressed on download. Currently, only `.tar.gz` archives are supported.
* `binary-path`: Provide a path to the binary within the compressed archive. If the assets are not compressed, this value will be ignored.
* `overwrite`: When uploading the universal binary to the Github release, this options specifies whether or not to overwrite if an asset with the same name is already present.

## Example usage

```yaml
uses: "manojkarthick/macos-universal-binary-action@v0"
env:
  GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
with:
  owner: "manojkarthick"
  repo: "amalgam"
  tag: "v0.1.0"
  amd64: "darwin-amd64"
  arm64: "darwin-arm64"
  compressed: "true"
  binary-path: "amalgam"
  overwrite: "true"
  universal-identifier: "all"
```
