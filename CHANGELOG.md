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
