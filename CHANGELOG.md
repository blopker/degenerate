# Changelog

Important user-facing changes only. For full details see commit log.

## 0.2.1

- Fix required-but-nullable query parameters generating invalid assignments (`String?` assigned to `Map<String, String>`)
- Add totem-web.json to snapshot testing

## 0.2.0

**Breaking changes to CLI defaults and output structure.**

- **New default output**: generated code goes to `lib/<name>/` (was `lib/src/generated/`). The `-n` flag sets the package name (default: `api_client`) and is appended to the `-o` base directory.
- **Workspace mode** (`--workspace`): generates a standalone Dart package with `pubspec.yaml` to `packages/<name>/` (customizable with `-o`). Includes `resolution: workspace` for Dart workspaces.
- **Flattened directory structure**: removed the `src/` directory from generated output. Models, APIs, client, and barrel file are now siblings (e.g. `models/`, `apis/`, `client/`, `<name>.dart`). Workspace mode wraps these under `lib/`.
- **No pubspec in default mode**: the CLI prints the dependencies you need to add to your own `pubspec.yaml` after generation.
- **Post-generation instructions**: the CLI now prints setup instructions (dependencies for default mode, workspace + dependency config for workspace mode).
- **Unformatted output**: generated code is no longer annotated with `// dart format off`. Run `dart format` on the output to apply your project's formatting preferences.
- **Dropped `collection` dependency**: replaced `ListEquality` with a built-in `listEquals` in `degenerate_runtime`. One fewer dependency for generated code.
- **Simplified file headers**: generated files now contain only `// GENERATED CODE - DO NOT MODIFY BY HAND`.

## 0.1.5

- Fix published package containing `workspace` field in pubspec.yaml, which caused `dart run build_runner` failures for users

## 0.1.4

- Add stdin pipe support (`-i -`): generate from `curl`, `cat`, or any command (e.g. `curl https://example.com/spec.json | degenerate -i - -o lib/src/api -n my_api`)

## 0.1.3

- Fix runtime crash for required+nullable fields in fromJson (`type 'Null' is not a subtype of type 'String' in type cast`)
- Fix enum values with special characters (e.g. `[DONE]`) generating PascalCase instead of lowerCamelCase

## 0.1.2

- Add GitHub Actions CI
- Add release script (`make release`)
- Make runtime packages publishable to pub.dev (version constraints instead of path deps)

## 0.1.1

- Fix README image on pub.dev
- Add GitHub Actions CI
- Add release script (`make release`)
- Make runtime packages publishable to pub.dev (version constraints instead of path deps)

## 0.1.0

- Initial version.
