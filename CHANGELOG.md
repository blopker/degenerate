# Changelog

Important user-facing changes only. For full details see commit log.

## 0.4.1

**Generated code is now lint-clean under `very_good_analysis`.**

### Breaking changes

- **`OneOf.parse` callback signature**: callback parameter type changed from `Object?` to `Object` (with `json!` assertion in runtime). Callers passing nullable values to parse callbacks will need to add a `!` assertion.
- **`@immutable` annotation**: re-exported from `degenerate_runtime`. Generated model, enum, and union variant classes are now annotated `@immutable`.

### Improvements

- **Lint-clean generated output**: generated Dart code now passes `dart analyze` with zero issues under `very_good_analysis` for all tested specs (Stripe, GitHub, Cloudflare, Twilio, etc.).
  - Constructors ordered before fields/methods (`sort_constructors_first`)
  - Required named parameters before optional (`always_put_required_named_parameters_first`)
  - Files end with exactly one trailing newline (`eol_at_end_of_file`)
  - Imports/exports sorted alphabetically (`directives_ordering`)
  - Security scheme literals omit redundant default values and use `const` (`avoid_redundant_argument_values`, `prefer_const_constructors`)
  - Raw strings and double-quoted strings used to avoid unnecessary escapes (`use_raw_strings`, `avoid_escaping_inner_quotes`)
  - Identity map transforms like `.map((k, v) => MapEntry(k, v))` are elided (`unnecessary_lambdas`)
  - Simple closures like `(e) => base64Encode(e)` emit tearoffs (`unnecessary_lambdas`)
  - Empty model `fromJson` uses `_` for unused parameter and `const` return (`avoid_unused_constructor_parameters`, `prefer_const_constructors`)
  - Doc comment `[references]` escaped to avoid false Dart doc links (`comment_references`)
  - Fenced code blocks in doc comments get a language specifier (`missing_code_block_language_in_doc_comment`)
  - Form-urlencoded body list literals are explicitly typed (`inference_failure_on_collection_literal`)
  - Untagged union `fromJson` casts accessor to `Map<String, dynamic>` for object variants (`argument_type_not_assignable`)
  - Extension type multipart serialization skips redundant `.toString()` when `toJson()` already returns `String` (`noop_primitive_operations`)

## 0.4.0

**Critical fixes for discriminated unions, streaming, and runtime ergonomics.**

### Breaking changes

- **`OneOf` types simplified**: the sealed subclass hierarchy (`OneOf2A`, `OneOf2B`, etc.) is replaced by a single `final class` per arity. Code using `is OneOf2A` checks must switch to matching on `.value` type instead. Named constructors `.a()`, `.b()`, `.c()` etc. provide concise construction with Dart's implicit context syntax (e.g. `model: .b(.gpt4oMini)`).

### Bug fixes

- **Discriminator enum value extraction**: inferred discriminator mappings now extract the actual enum value from referenced schemas (e.g. `'system'` from `role: enum: [system]`) instead of using schema names. Fixes OpenAI `ChatCompletionRequestMessage` dispatch and similar patterns.
- **Streaming interceptor bypass**: `executeStreaming` and `executeJsonlStreaming` now run through the full interceptor chain (auth, retry, logging) before sending. Previously interceptors were completely bypassed for streaming requests, causing silent auth failures.
- **Mid-stream error wrapping**: network errors during SSE/JSONL streaming (SocketException, etc.) are now wrapped in `ApiStreamError` instead of propagating as raw platform exceptions.

### Improvements

- **OneOf variant deduplication**: inline unions with duplicate variant types (e.g. `OneOf3<A, A, B>`) are collapsed to remove redundant variants (`OneOf2<A, B>`).
- **Shorter discriminated union variant names**: variant class names now use the discriminator enum value (`ChatCompletionRequestMessageSystem`) instead of the full schema name (`ChatCompletionRequestMessageChatCompletionRequestSystemMessage`).
- Added `example.md` with real-world usage patterns (OpenAI, streaming, Riverpod, envelope unwrapping).

## 0.3.0

**Major feature release: allOf composition, additionalProperties, streaming, and OAS 3.2 support.**

### New features

- **`additionalProperties` support**: objects with `additionalProperties` now generate a typed overflow `Map<String, T>` field. Extra keys are preserved during fromJson/toJson round-trips instead of being silently dropped. Supports typed values, dynamic, and recursive self-references.
- **`allOf` composition**: `allOf` schemas that combine a `$ref` with extra inline properties now produce a merged object with all fields from both the ref target and the inline schema, instead of silently dropping the extra properties.
- **`--unwrap-fields` CLI option**: unwrap response envelopes by extracting a named field. `--unwrap-fields=result` returns the `result` type directly instead of the full `{errors, messages, success, result}` envelope — matching what Stainless generates for Cloudflare SDKs.
- **OAS 3.2 `query` method**: the HTTP QUERY method (safe method with request body) is now a first-class operation.
- **OAS 3.2 `additionalOperations`**: custom HTTP methods (COPY, LOCK, PURGE, etc.) via the path item's `additionalOperations` map.
- **Typed streaming via `itemSchema`**: SSE and JSONL responses with `itemSchema` now return `Stream<T>` with typed deserialization instead of `void`.
- **JSONL streaming**: `application/jsonl` and `application/x-ndjson` media types are now supported with a dedicated `executeJsonlStreaming` runtime method.
- **Integer and number enums**: enum schemas with `type: integer` or `type: number` now generate typed enums with `int`/`double` values, not just string enums.
- **`content`-based parameter schemas**: parameters using the OAS 3.x `content` field (instead of `schema`) now have their schema correctly extracted.
- **OAuth2 `deviceAuthorization`**: the device authorization flow type and `deviceAuthorizationUrl` are now supported.

### Bug fixes

- **String literal escaping**: `$`, `\n`, `\r`, `\t`, and Unicode bidi/zero-width characters are now properly escaped in generated string literals.
- **Object member name conflicts**: fields and methods named `toString`, `hashCode`, `runtimeType`, or `noSuchMethod` are prefixed with `$` to avoid conflicts with `Object` members.
- **Discriminator mapping keys**: inferred `oneOf` discriminator mappings now use the original schema names as switch keys, not the Dart type names.
- **Discriminator `toJson` collision**: union variant `toJson` spreads the variant first and sets the discriminator key last, so the discriminator always wins over fields with the same name.
- **`type: "null"` handling**: `type: "null"` now maps to nullable `dynamic` instead of `String`.
- **`canParse` for optional-only models**: models with no required fields now check for at least one known property key instead of returning `true` unconditionally.
- **Latin character transliteration**: accented characters are transliterated to ASCII (`café` → `cafe`) instead of being stripped (`caf`).
- **Enum casing**: leading `+`/`-` before letters in enum values no longer corrupts casing (`+NaN` → `naN`, not `NaN`).
- **Query/header parameter key escaping**: `$` and special characters in parameter names are properly escaped in generated map key strings.

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
