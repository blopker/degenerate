# Degenerate — OpenAPI → Dart Code Generator TODO

## Current State (2026-03-09)

### What Works
- **Full pipeline**: Parse YAML/JSON → Lower to IR (with inline allOf flattening and $ref resolution) → Emit Dart via code_builder → Format via dart_style (parallel isolates) → Write
- **230+ unit tests** all passing, **19 wire tests** passing, `dart analyze` clean on all source directories
- **CLI**: `--input`, `--output`, `--name`, `--client http|none`, `--workspace`, `--include-deprecated`, `--clean`, `--verbose`, `--dry-run`
- **Runtime package split**: `degenerate_runtime` (core interfaces, middleware, interceptors), `degenerate_http` (package:http adapter), `degenerate_dio` (package:dio adapter)
- **OkHttp-style middleware**: single `intercept(request, next)` pattern with built-in `RetryInterceptor`, `AuthInterceptor`, and `LoggingInterceptor`
- **Forward-compatible**: enums use `final class` pattern preserving unknown raw values; discriminated unions and untagged unions have `$Unknown` fallback variants
- **OpenAPI 3.1 support**: nullable `anyOf: [Type, {type: null}]` pattern handled correctly
- **Parallel formatting**: dart_style formatting runs across all CPU cores via isolates (~2.4x speedup on large specs)
- **Example app**: working Petstore CLI example hitting the live petstore3 server
- **README** with full documentation

### Spec Scorecard (dart analyze on generated output)

| Spec | Files | Status |
|------|-------|--------|
| Petstore OAI (3.0) | 119 | 0 issues |
| Unions (custom fixture) | 453 | 0 issues |
| Circular refs (custom fixture) | 157 | 0 issues |
| Twilio (35k lines) | 35,821 | 0 issues |
| Shopify (50k lines) | 49,950 | 0 issues |
| Kubernetes (39k lines, JSON) | 39,336 | 0 issues |
| Totem Mobile (3.1) | ~4k | 0 issues |
| OpenAI | 2,317 | 0 issues |
| GitHub REST 3.1 | 6,401 | 0 issues |
| Cloudflare | 14,580 | 0 issues |
| Stripe (162k lines) | 10,768 | 0 issues |
| DigitalOcean | — | Fails (external `$ref` — tested) |

---

## Completed (Session 8)
- [x] **External `$ref` handling** — now throws `UnsupportedError` for all non-local refs (any ref not starting with `#/`). DigitalOcean snapshot deleted; explicit failure test added.
- [x] **Header parameters emitted** — header params now written into `ApiRequest.headers` with required/optional handling.
- [x] **2xx success detection expanded** — checks all 2xx status codes, not just 200-204.
- [x] **Primitive/enum/collection error deserialization** — type-aware deserialization for string, int, double, bool, enum, list, map error schemas.
- [x] **`outputs/**` excluded from analyzer** — added to `analysis_options.yaml`.
- [x] **Wire tests** — created test infrastructure under `test/wire/` with RecordingClient-based behavioral tests for fixtures 03 and 05.
- [x] **RecordingClient in runtime** — moved to `packages/degenerate_runtime/lib/src/testing/` with separate `testing.dart` entrypoint.
- [x] **Makefile updated** — discovers and runs wire tests via `find`, runs `dart analyze` on all source directories.

## Previously Completed
- [x] **Error response deserialization** — `ApiResult<T, E>` with typed error model and try-catch fallback.
- [x] **Extension types for branded primitives** — named primitives generate Dart extension types.
- [x] **Try Stripe spec** — 162k lines, 10,768 files, 0 issues.

---

## Remaining Features

### P0: Correctness Blockers

- [ ] **Non-JSON request bodies always JSON-encoded** — regardless of media type, emitter always sets `Content-Type: application/json` and uses `jsonEncode()`. Breaks `multipart/form-data`, `application/x-www-form-urlencoded`, `text/plain`, and binary payloads. Need to carry chosen media type through IR and emit transport-specific serialization. *(review.md #4, review2.md 1d)*
- [ ] **Non-JSON success/error responses discarded** — response typing only recognizes `application/json`. Should also handle `application/*+json`, `application/problem+json`, `text/plain`, and binary. *(review.md #5, review2.md #2)*
- [ ] **Query serialization ignores style/explode/allowReserved** — array/object query params use `.toString()` instead of spec-defined serialization styles (`form`, `simple`, `label`, `matrix`, `deepObject`, `pipeDelimited`, `spaceDelimited`). IR should carry serialization metadata. *(review2.md 1c)*
- [ ] **HTTP adapter only supports string bodies** — `HttpApiClient.send()` casts `request.body` to `String`. Blocks raw bytes, multipart, streamed uploads, and form submission even if generation improves. Body model and transport model need to evolve together. *(review2.md 1e)*

### P1: Important Capability Gaps

- [ ] **Cookie parameters dropped** — recognized during partitioning but explicitly ignored (`break`). Need to either synthesize a `Cookie` header or add first-class cookie support in `ApiRequest`. *(review.md #3, review2.md 1b)*
- [ ] **Security schemes don't drive codegen** — runtime has `AuthInterceptor`, but generator doesn't emit typed auth surfaces from `securitySchemes`. Should support API key (header/query/cookie), bearer/basic, and per-operation security requirements. Fixture 06 exists but isn't wired up. *(review2.md #3, #6)*
- [ ] **External `$ref` file resolution** — currently throws `UnsupportedError`. Need multi-document loading and a document graph for split-file specs. Common enterprise requirement. *(review.md #1, review2.md #4)*
- [ ] **Lossy schema fallbacks** — untyped schemas → `String` (should be `Object?` or `JsonValue`); free-form objects → `Map<String, String>` (should be `Map<String, Object?>`); boolean schemas → `String`. *(review2.md 5a/5b/5c)*
- [ ] **`--client` flag is a no-op** — CLI exposes `--client http|none` but nothing changes in generated output. Either wire it up or remove it. *(review.md #7, review2.md 7c)*

### P2: Polish and Trust

- [ ] **CI workflow** — add GitHub Actions for tests, analyze, and snapshot validation. *(review2.md 7d)*
- [ ] **Determinism test** — run generator twice on same input, assert byte-identical output. *(review2.md #10)*
- [ ] **README claims too broad** — "full OpenAPI 3.x support" is premature. Better: "strong support for JSON-oriented OpenAPI 3.x specs." *(review2.md 7a)*
- [ ] **Formatting story inconsistent** — emitted files use `// dart format off` markers, but pipeline docs describe dart_style parallel formatting. Reconcile. *(review2.md 7b)*
- [ ] **Spec-derived base URL helper** — parser reads `servers` but generator doesn't use them. Emit a generated constant for the first server URL. *(review2.md #13)*
- [ ] **Retry interceptor improvements** — add jitter, idempotency gating, `Retry-After` header handling. Current implementation is useful but operationally naive. *(review2.md #6)*
- [ ] **Vendor extension pass-through** — skip `x-` fields gracefully (already mostly works, not tested).

### Architectural Suggestions (from review2.md)

These are cross-cutting improvements that would make multiple P0/P1 items easier to implement:

- [ ] **Parameter serialization layer** — IR should preserve `style`, `explode`, `allowReserved`, and parameter location. Emit or runtime-dispatch through a serializer that handles all OpenAPI serialization styles.
- [ ] **Request-body preparation layer** — lower operation body to a prepared transport shape (`BodyKind.json`, `.text`, `.bytes`, `.formUrlEncoded`, `.multipart`) with per-type serialization and content-type logic.
- [ ] **Response decoding layer** — instead of hardcoding `application/json`, emit decode strategies: `jsonObject`, `jsonArray`, `jsonScalar`, `text`, `bytes`, `void`.

---

## Performance

Profiled on Cloudflare spec (14,580 generated files):

| Phase | Time |
|-------|------|
| YAML parse | ~1.1s |
| Lower schemas | ~0.15s |
| Lower operations | ~0.4s |
| Resolve refs | ~0.02s |
| code_builder emit | ~0.2s |
| dart_style format (parallel) | ~4s |
| File I/O write | ~2s |
| **Total (JIT)** | **~8s** |
| **Total (AOT compiled)** | **~6s** |

Formatting is the dominant cost. Parallelized across CPU cores via `Isolate.run`.

---

## Session History

### Session 8 (2026-03-09) — Review-driven bug fixes + wire tests

- Fixed external `$ref` handling: throws `UnsupportedError` for all non-local refs; deleted DigitalOcean snapshot; explicit failure test
- Fixed header parameter emission into `ApiRequest.headers`
- Expanded 2xx success detection to all 2xx status codes
- Fixed primitive/enum/collection error deserialization (type-aware switch)
- Added operation-level `$ref` resolution in `OperationLowerer.lowerPaths()`
- Created wire test infrastructure under `test/wire/` using Dart 3.11 workspaces
- Moved `RecordingClient` to `degenerate_runtime` with separate `testing.dart` entrypoint
- Added `--workspace` CLI flag to emit `resolution: workspace` in generated pubspec
- Excluded `outputs/**` from analyzer
- Updated Makefile to discover and run wire tests
- 230+ root tests, 19 wire tests, analyzer clean

### Session 7 (2026-03-09) — Runtime package split + middleware

- Designed and implemented OkHttp-style middleware chain (`intercept(request, next)`) replacing 3-hook interceptor pattern
- Extracted runtime types into `packages/degenerate_runtime` (zero deps)
- Created `packages/degenerate_http` (package:http adapter) and `packages/degenerate_dio` (package:dio adapter)
- Adapter packages re-export `degenerate_runtime` so users only need one import
- Built-in interceptors: `RetryInterceptor` (exp backoff on 429/5xx), `AuthInterceptor` (token refresh on 401), `LoggingInterceptor`
- `ApiRequest.copyWith` with sentinel pattern for nullable `body`/`contentType` fields
- Fixed `resolveUri` to concatenate base path instead of using `Uri.resolve()` (preserves paths like `/api/v3`)
- Fixed `default` reserved word in SDK facade field names via `sanitizeFieldName`
- Generated pubspec uses relative paths to runtime package (with symlink resolution for macOS `/var` → `/private/var`)
- Created `example/` with Petstore CLI app hitting live petstore3 server
- Updated generated code to depend on `degenerate_runtime` package instead of emitting runtime files inline
- Deleted `lib/src/emitter/runtime_sources.dart` and `lib/src/runtime/` directory
- 29 runtime package tests + updated generator/emitter/snapshot tests → 185 total tests passing
- Updated README with Quick Start, Packages, Middleware sections

### Session 6 (2026-03-08) — Profiling + parallel formatting
- Profiled full pipeline on Cloudflare (14,580 files): dart_style formatting was 76% of runtime
- Deferred formatting to end of pipeline, parallelized across CPU cores via `Isolate.run`
- ~2.4x speedup (15.4s → 6.3s AOT compiled on Cloudflare)
- Fixed 5 `curly_braces_in_flow_control_structures` lint issues

### Session 5 (2026-03-08) — Refactoring review
- Removed duplicated `_listItemNeedsToJson`/`_mapValueNeedsToJson` from model_emitter (fixed real `PrimitiveKind.bytes` bug)
- Created shared `formatDocComment` helper, replaced 7 duplicated doc comment patterns
- Single-pass path template replacement in api_emitter via `replaceAllMapped`
- Consolidated three API analysis passes into single `_analyzeApi` method in file_emitter

### Session 4 (2026-03-08) — Correctness review + large spec fixes
- Enum emitter: rewrote from `enum` to `final class` pattern for unknown value round-trip fidelity
- API emitter: fixed enum query serialization, boolean response parsing, GET/HEAD body skipping, nullable body handling
- Fixed OpenAI `invalid_override`: sealed class `value` getter `Object` → `Object?`
- Fixed GitHub `duplicate_definition`: `+1`/`-1` both sanitized to `$1` — added plus/minus preprocessing
- Fixed GitHub nullable list items, `identical` as enum field name, list-type union variant spread
- Implemented enum dedup for allOf-wrapped inline enums (title + values matching)
- All specs (Cloudflare, GitHub, OpenAI, Totem) analyze clean

### Session 3 (2026-03-08) — Review fixes + forward compatibility
- Removed no-op CLI flags (`--null-fields`, `--branded-primitives`, `--single-file`)
- Removed `dio` from `--client` allowed values
- Removed dead `resolveAllSchemas()` call and unused `RefResolver` import
- Added `$unknown` fallback to enums (no more `FormatException` on unknown values)
- Added `$Unknown` variant to discriminated unions and untagged unions
- Added `isUnknown` getter on enums and discriminated unions
- Added schema fallback warnings in `TypeLowerer` (printed by generator)
- Wrote full README with CLI docs, architecture, examples, tested specs

### Session 2 (2026-03-08) — Kubernetes + Totem Mobile fixes
- Fixed Kubernetes allOf-with-$ref bug (152 → 0 errors): `AllOfFlattener` short-circuits single-entry allOf with `$ref`; `TypeLowerer` checks for `$ref` after flattening
- Fixed `format: byte` map values to use `base64Decode`/`base64Encode`
- Fixed OpenAPI 3.1 nullable `anyOf: [Type, {type: null}]` pattern
- Fixed inline discriminated/untagged unions getting `UnnamedUnion` names
- Fixed enum default values in constructors for enum-typed fields
- Fixed multi-line enum descriptions leaking out of doc comments
- Fixed `lowerInlineSchema` to register inline enums/unions for emission

### Session 1 — Initial build
- Full pipeline: parse → normalize → lower → emit → format
- Unit tests all passing
- Clean output on Petstore, Twilio, Shopify specs

---

## Architecture

```
bin/degenerate.dart          CLI entry point
lib/src/
  generator.dart             Pipeline orchestrator
  naming.dart                PascalCase/camelCase/sanitize/deduplicate
  ir/ir_types.dart           All IR types (sealed classes, enums)
  parser/openapi_document.dart   YAML/JSON parsing
  normalizer/
    allof_flattener.dart     Merge allOf compositions (used inline during lowering)
  lowering/
    type_lowerer.dart        OpenAPI schemas → IR types (handles $ref and allOf inline)
    operation_lowerer.dart   OpenAPI paths/ops → IR operations
  emitter/
    emit_utils.dart          Shared: formatting, type refs, fromJson/toJson code gen, parallel formatting
    model_emitter.dart       IrObject → final class (fromJson, toJson, copyWith, ==, hashCode)
    enum_emitter.dart        IrEnum → final class with static const instances + unknown value preservation
    sealed_union_emitter.dart  Discriminated/untagged/anyOf unions → sealed classes with $Unknown
    api_emitter.dart         IrApi → API client class with operation methods
    file_emitter.dart        Orchestrates all emitters, produces file structure

packages/
  degenerate_runtime/        Core interfaces (ApiClient, ApiConfig, ApiResult), middleware chain, interceptors
    lib/testing.dart         Separate entrypoint: re-exports runtime + RecordingClient for user tests
  degenerate_http/           HttpApiClient adapter (package:http)
  degenerate_dio/            DioApiClient adapter (package:dio)

example/                     Petstore CLI app using generated client + degenerate_http

test/
  fixtures/                  OpenAPI spec files for testing
  snapshots/                 Committed golden output (petstore, unions, circular, + public specs)
  wire/                      Behavioral wire tests per fixture (Dart workspace packages)
scratch/                     Ephemeral test builds (.gitignored)
outputs/                     Experimenting/investigation (.gitignored)
```

## Test Fixtures Available
- `petstore-v3.0-oai.yaml` — OAI official variant
- `unions.yaml` — discriminated unions, untagged unions, anyOf, allOf, enums, nullability
- `circular.yaml` — self-referencing and mutual circular refs
- `twilio-api-v2010.yaml` — 35k lines, many tags, range filter params
- `kubernetes-api-v1-openapi.json` — 39k lines JSON, circular refs, allOf-with-$ref pattern
- `totem-mobile.json` — OpenAPI 3.1, nullable anyOf pattern, inline discriminated unions
- `openai.yml` — OpenAI API spec
- `github-rest-3.1.yaml` — 244k lines, OpenAPI 3.1
- `cloudflare.yaml` — 360k lines
- `stripe-spec3.yaml` — 162k lines, heavy anyOf, vendor extensions
