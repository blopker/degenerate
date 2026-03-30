# Unhinged Review

## Findings

- ~~High: `type: "null"` is generated incorrectly as `String`.~~
  - Fixed: `type: "null"` now maps to nullable `dynamic` instead of `String`. The field accepts only `null` as a valid JSON value.

- ~~High: the `allOf` schema `"new"` is dropped entirely, and the affected operation uses the wrong request type.~~
  - Fixed: allOf with `$ref` + extra properties now merges into a full IrObject. The `New` model is generated with all fields, and `POST /incidents` uses it.

- ~~High: `additionalProperties` on `True` is ignored, so unknown recursive properties are silently lost.~~
  - Fixed: objects with `additionalProperties` now generate an overflow `Map<String, T>` field. fromJson filters known keys into fixed fields and collects the rest. toJson spreads the overflow back. Supports typed values, dynamic, and recursive self-references.

- ~~High: non-HTTP-standard and extended operations/features are omitted instead of surfaced.~~
  - Fixed: OAS 3.2 `query` method and `additionalOperations` (custom HTTP methods like HAUNT, PURGE) are now parsed and generated. Operation method names that conflict with Object members are escaped (`toString` → `$toString`).

- ~~High: streaming `itemSchema` responses are collapsed to `void`.~~
  - Spec:
    - SSE stream of `Type`: `test/fixtures/public/unhinged.yaml:223-238`
    - JSONL stream of `String`: `test/fixtures/public/unhinged.yaml:240-261`
  - Generated:
    - `streamBarnEvents()` returns `Future<ApiResult<void, Never>>`: `snapshots/public/unhinged/lib/apis/default_api.dart:54-68`
    - `$yield()` returns `Future<ApiResult<void, Never>>`: `snapshots/public/unhinged/lib/apis/default_api.dart:72-96`
  - Fixed: `itemSchema` is now parsed from media type objects. SSE streams use `executeStreaming`, JSONL streams use `executeJsonlStreaming`. Both return `Stream<T>` with typed deserialization.

- Medium: discriminator/composition behavior is incomplete or wrong.
  - `"3Incident"` has a discriminator on `"2species"` with mappings: `test/fixtures/public/unhinged.yaml:378-383`
  - Generated output is only a plain `$3Incident` model with no subtype dispatch or mapping support: `snapshots/public/unhinged/lib/models/n3_incident.dart`
  - ~~`Self` `toJson()` discriminator key collision~~ — Fixed: spread comes before discriminator, so the discriminator key always wins.
  - ~~`Self` discriminator uses normalized names~~ — Fixed: inferred mappings use original schema names.
  - Impact: `3Incident` discriminator with emoji mappings is still not handled as a union.

- ~~Low: property name normalization strips non-ASCII letters.~~
  - Fixed: accented Latin characters are now transliterated to ASCII (`café` → `cafe`). `dart_style` does not support Unicode identifiers, so ASCII transliteration is the correct approach.

- ~~Low: `dart analyze` errors on generated code.~~
  - ~~`$filter` query key not escaped, `toString` field conflicts with `Object.toString()`, bidi chars unescaped, `NaN` constant not lowerCamelCase.~~
  - Fixed: `escapeDartString` now handles `$`, control chars, and bidi codepoints; `sanitizeFieldName` escapes Object members; `enumValueName` strips leading `+/-` before letters.


- ~~Medium: enum typing is inconsistent and loses schema information.~~
  - `True.type` is a plain `String?` because it's a discriminator property (intentional — discriminator fields must accept unknown values).
  - Fixed: integer and number enums are now lowered as typed enums with `int`/`double` values instead of being flattened to primitives.
  - Remaining: `Object."Infinity"` is a `double` enum which technically has constrained values, but `double` enums with `Infinity`/`NaN` values are an extreme edge case.

- ~~Medium: `queryString` content is flattened to `dynamic.toString()`, losing encoding semantics and structure.~~
  - Fixed: the operation lowerer now extracts schemas from `content`-based parameters. `topic` is lowered to a typed `YieldTopic` object with properly serialized query fields.

- ~~Medium: OAuth2 flow generation is incomplete/incorrect.~~
  - Fixed: `deviceAuthorization` flow type and `deviceAuthorizationUrl` are now supported.
  - Remaining: `oauth2MetadataUrl` is not preserved (non-standard OAS extension).

- Medium: response modeling drops important response detail.
  - `GET /incidents` has `200`, `666`, and `default`, plus typed headers: `test/fixtures/public/unhinged.yaml:84-105`
  - Generated API only models success body and default error body: `snapshots/public/unhinged/lib/apis/incidents_api.dart:71-81`
  - `666` is not surfaced distinctly, and response headers are ignored.
  - Impact: clients lose typed access to non-default responses and headers the spec declares.

- ~~Medium: `Proto.constructor` references wrong type due to missing `new` model.~~
  - Fixed: `New` model is now generated via allOf expansion. `Proto.constructor` is typed as `New?`.

- Low: required fields in `fromJson()` have no null/missing-key checks.
  - All models cast required fields directly (e.g. `json['code'] as String`) with no guard.
  - Impact: missing keys produce unhelpful cast errors instead of clear validation messages.

- ~~Low: `$yield()` parameter `topic` is `required` in signature but null-checked in body.~~
  - Fixed: the operation lowerer now extracts schemas from `content`-based parameters (OAS 3.x `content` field), so `topic` is typed as `YieldTopic` instead of `dynamic`.

- ~~Low: inconsistent serialization patterns across models.~~
  - By design: `?` null-aware operator is used for primitive passthrough, `if (x != null)` guards are needed when calling methods (`.toJson()`) on nullable complex types. `copyWith()` uses `Function()` callbacks only for nullable fields to allow setting them to null.

- ~~Low: `canParse()` helpers are often too weak to be meaningful.~~
  - Fixed: models with no required fields now check that at least one known property key exists instead of returning `true` unconditionally.
  - Remaining: shallow checks don't validate discriminator or enum compatibility, but this is acceptable for a lightweight parse guard.

## What Looks Good

- Reserved and awkward identifiers are sanitized into usable Dart names, including Object member conflicts (`toString` → `$toString`), `$`-prefixed params, bidi/zero-width chars, and leading `+/-` in enum values.
- Generated code passes `dart analyze` with zero issues and `dart format` cleanly.
- Unknown string enum preservation is handled well in several places, for example:
  - `snapshots/public/unhinged/lib/models/phase.dart`
  - `snapshots/public/unhinged/lib/models/type_model.dart:3-123`
  - `snapshots/public/unhinged/lib/models/object_model.dart:3-55`
- `Self` unknown-variant fallback is a solid choice: `snapshots/public/unhinged/lib/models/self.dart:136-167`

## Assessment

The biggest problems are not cosmetic. The snapshot currently has:

1. schema-to-type mismatches (`null`, `allOf`, `additionalProperties`),
2. missing operations and features (`query`, `additionalOperations`, streaming `itemSchema`),
3. incomplete security and response modeling.
