# Unhinged Review

## Findings

- High: `type: "null"` is generated incorrectly as `String`.
  - Spec: `test/fixtures/public/unhinged.yaml:301-302`
  - Generated: `snapshots/public/unhinged/lib/models/true.dart:77,93,109,153-154`
  - `True.none` should represent JSON `null`, but the client requires a `String` and validates `json['none'] is String`.
  - Impact: valid server payloads with `null` will fail to parse, and client serialization is wrong.

- High: the `allOf` schema `"new"` is dropped entirely, and the affected operation uses the wrong request type.
  - Spec defines `"new"` as `allOf: [True, object-with-extra-fields]`: `test/fixtures/public/unhinged.yaml:333-352`
  - `POST /incidents` should accept `"new"` but generated code uses `True`: `snapshots/public/unhinged/lib/apis/incidents_api.dart:86-97`
  - No generated model exists for `"new"` at all.
  - Impact: request bodies cannot express the full schema and valid inputs are rejected at the API surface.

- High: `additionalProperties` on `True` is ignored, so unknown recursive properties are silently lost.
  - Spec: `test/fixtures/public/unhinged.yaml:330-331`
  - Generated model has only fixed fields and no storage for extra keys: `snapshots/public/unhinged/lib/models/true.dart`
  - Impact: round-tripping is lossy and the generated type does not match the schema contract.

- High: non-HTTP-standard and extended operations/features are omitted instead of surfaced.
  - `additionalOperations` under `/animals/{animalId}` are in the spec: `test/fixtures/public/unhinged.yaml:172-193`
  - Generated `ClassApi` only contains `getAnimal`: `snapshots/public/unhinged/lib/apis/class_api.dart:18-39`
  - `/incidents/search` with the `query` method exists in the spec: `test/fixtures/public/unhinged.yaml:195-221`
  - There is no generated API for it.
  - Impact: whole operations are missing from the client.

- High: streaming `itemSchema` responses are collapsed to `void`.
  - Spec:
    - SSE stream of `Type`: `test/fixtures/public/unhinged.yaml:223-238`
    - JSONL stream of `String`: `test/fixtures/public/unhinged.yaml:240-261`
  - Generated:
    - `streamBarnEvents()` returns `Future<ApiResult<void, Never>>`: `snapshots/public/unhinged/lib/apis/default_api.dart:54-68`
    - `$yield()` returns `Future<ApiResult<void, Never>>`: `snapshots/public/unhinged/lib/apis/default_api.dart:72-96`
  - Impact: response typing is dropped for two notable media-type features the spec is explicitly testing.

- Medium: discriminator/composition behavior is incomplete or wrong.
  - `"3Incident"` has a discriminator on `"2species"` with mappings: `test/fixtures/public/unhinged.yaml:378-383`
  - Generated output is only a plain `$3Incident` model with no subtype dispatch or mapping support: `snapshots/public/unhinged/lib/models/n3_incident.dart`
  - `Self` does generate a tagged union, but `SelfTrue.fromJson()` can overwrite the discriminator:
    - union serializer: `snapshots/public/unhinged/lib/models/self.dart:45-47`
    - base model also serializes a `"type"` property: `snapshots/public/unhinged/lib/models/true.dart:123,143`
  - Because the spread comes after `'type': type`, a `True.type` value can replace the union discriminator.
  - ~~`Self` discriminator uses normalized names like `'Proto'` and `'StringModel'` instead of the original schema names `'__proto__'` and `'String'`.~~
    Fixed: inferred discriminator mappings now use original schema names as switch keys.
  - Impact: union serialization can emit invalid discriminator values. The `True.type` / discriminator `type` key collision is still unresolved.

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

- Medium: OAuth2 flow generation is incomplete/incorrect.
  - Spec includes `authorizationCode` plus `deviceAuthorization`, and also `oauth2MetadataUrl`: `test/fixtures/public/unhinged.yaml:274-291`
  - Generated output emits two `authorizationCode` flows, drops `deviceAuthorizationUrl`, and does not preserve `oauth2MetadataUrl`: `snapshots/public/unhinged/lib/client/pub_unhinged_security.dart:38-58`
  - Impact: generated security metadata does not faithfully describe the spec.

- Medium: response modeling drops important response detail.
  - `GET /incidents` has `200`, `666`, and `default`, plus typed headers: `test/fixtures/public/unhinged.yaml:84-105`
  - Generated API only models success body and default error body: `snapshots/public/unhinged/lib/apis/incidents_api.dart:71-81`
  - `666` is not surfaced distinctly, and response headers are ignored.
  - Impact: clients lose typed access to non-default responses and headers the spec declares.

- Medium: `Proto.constructor` references wrong type due to missing `new` model.
  - Spec: `constructor` is `$ref: "#/components/schemas/new"`: `test/fixtures/public/unhinged.yaml:389`
  - Generated as `True?` instead of the `new` allOf type: `snapshots/public/unhinged/lib/models/proto.dart`
  - Impact: the nested constructor field loses the extra properties from the `new` schema.

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
