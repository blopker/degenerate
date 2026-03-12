# Degenerate — OpenAPI → Dart Code Generator TODO

## Current State (2026-03-12)

### What Works
- **Full pipeline**: Parse YAML/JSON → Lower to IR (with inline allOf flattening and $ref resolution) → Emit Dart via code_builder → Format via dart_style (parallel isolates) → Write
- **CLI**: `--input`, `--output`, `--name`, `--workspace`, `--include-deprecated`, `--clean`, `--verbose`, `--dry-run`
- **Runtime package split**: `degenerate_runtime` (core interfaces, middleware, interceptors — web-compatible, no `dart:io`), `degenerate_http` (package:http adapter), `degenerate_dio` (package:dio adapter)
- **OkHttp-style middleware**: single `intercept(request, next)` pattern with built-in `RetryInterceptor`, `AuthInterceptor`, and `LoggingInterceptor`
- **Forward-compatible**: enums use `final class` pattern preserving unknown raw values; discriminated unions and untagged unions have `$Unknown` fallback variants
- **Union types**: `oneOf`/`anyOf` with 2-9 variants emit lightweight `typedef X = OneOfN<A, B, ...>` using runtime generic containers instead of sealed classes; inline primitive-only unions collapse to `Object`
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
| External refs (custom fixture) | 7 | 0 issues |
| DigitalOcean | — | Fails (missing external ref files) |

---

## Completed (Session 12)
- [x] **Inline schema naming improvements** — inline schemas use `title` field, parent context, and single-value enum values for naming instead of `InlineObjectN` fallback. Reduced OpenAI `InlineObject` files from 57 to 0.
- [x] **Primitive-only union collapse** — inline `oneOf`/`anyOf` composed entirely of primitives (string, int, bool, etc.) collapse to `Object` instead of generating unnecessary sealed classes.
- [x] **`OneOf` runtime generic containers** — 8 sealed classes (`OneOf2`-`OneOf9`) in `degenerate_runtime` with `.from()` construction (runtime type matching), `.parse()` deserialization (typed parsers with `canParse` discriminators), `.toJson()`, `.value` getter, equality, and pattern matching support.
- [x] **OneOf typedefs in generated code** — eligible `oneOf`/`anyOf` unions (2-9 variants) now emit `typedef X = OneOfN<A, B, ...>` instead of full sealed class hierarchies, significantly reducing generated code volume while preserving type safety.
- [x] **API deserialization for OneOf types** — `IrTypeRef` references to OneOf-eligible unions are resolved through the type registry, generating `OneOfN.parse(...)` with `canParse` discriminators instead of broken `.fromJson()` calls on typedefs.

## Completed (Session 11)
- [x] **Cancel tokens** — `CancelToken` and `CancelledException` in runtime. Every generated method accepts `RequestOptions(cancelToken: token)`. Cancellation is socket-level in both adapters: Dio bridges to `dio.CancelToken`; HTTP uses `AbortableRequest`/`AbortableMultipartRequest`.
- [x] **Per-request options** — `RequestOptions` with `timeout`, `extraHeaders`, and `cancelToken`. Generated `_execute` merges extra headers and applies per-request timeout.
- [x] **Socket-level timeout** — timeout uses `Timer` + `CancelToken` instead of `Future.timeout()`, so timed-out requests actually close the socket. Dio native timeout exceptions (`connectTimeout`/`sendTimeout`/`receiveTimeout`) are converted to `TimeoutException` for consistency.
- [x] **`ApiParseException` for error deserialization** — error deserialization failures now produce `ApiParseException` instead of silently returning `ApiError` with null error.
- [x] **`toString()` on all `ApiResult` types** — readable output when printed.
- [x] **`rawBody` renamed to `rawError`** on `ApiError` for clarity.
- [x] **Multipart `contentType` passthrough** — both HTTP and Dio adapters now pass through `contentType` on file parts.

## Completed (Session 9)
- [x] **External `$ref` file resolution** — `RefInliner` pre-processing pass loads referenced YAML/JSON files, registers external schemas as local `#/components/schemas/Name` refs, resolves chained refs across files, detects circular refs, and handles JSON pointers (RFC 6901). Fixture 13 exercises multi-file specs with path-level and schema-level external refs including circular cross-file refs. DigitalOcean test verifies `FileSystemException` for missing ref files.
- [x] **`ApiParseException`** — new `ApiResult` subtype for deserialization failures. Carries the raw `ApiResponse` so callers can fall back to manual parsing when the server violates its own spec. Generated `_execute` distinguishes parse errors from network errors. Example app demonstrates the escape hatch pattern.

## Completed (Session 8)
- [x] **External `$ref` error handling** — now throws `FileSystemException` for missing external ref files. DigitalOcean snapshot deleted; explicit failure test added.
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

- [x] **Non-JSON request bodies** — emitter now preserves chosen media type, emits `text/plain` raw body writes, binary `application/octet-stream` byte uploads, and `application/*+json` JSON encoding. Unsupported non-JSON complex types emit `UnsupportedError` + generator warning. *(review.md #4, review2.md 1d)*
- [x] **Non-JSON success/error responses** — response typing handles `application/json`, `application/*+json` (e.g. `application/problem+json`), `text/plain`, and binary (`Uint8List` via `response.bodyBytes`). Generator warns on unsupported non-JSON complex schemas. *(review.md #5, review2.md #2)*
- [x] **Query serialization style/explode/allowReserved** — IR now carries `style`, `explode`, `allowReserved` on `IrParameter`. Emitter handles query `form` (exploded and non-exploded), `pipeDelimited`, `spaceDelimited`, `deepObject`, and `allowReserved`. Runtime supports duplicate query keys via `ApiQueryParameter` + `queryParametersList`. Wire tests cover delimited arrays, deepObject, cookies, and reserved-char passthrough through generated code. *(review2.md 1c)*
- [x] **HTTP/Dio adapters support binary bodies and responses** — `HttpApiClient` and `DioApiClient` accept both `String` and `List<int>` request bodies. `ApiResponse` carries `bodyBytes: Uint8List` alongside text `body`, with zero-copy when caller provides `Uint8List`. *(review2.md 1e)*

### P1: Important Capability Gaps

- [x] **Cookie parameters emitted** — cookie params now appear in method signatures, flow through `ApiRequest.cookies`, and adapters synthesize the `Cookie` header. `ApiConfig` supports `defaultCookies`. *(review.md #3, review2.md 1b)*
- [x] **Security schemes drive codegen** — generator now emits typed auth helpers for API key (header/query/cookie), bearer, and basic auth plus generated security metadata for schemes and per-operation/global requirements. Fixture 06 snapshot exercises the output. *(review2.md #3, #6)*
- [x] **External `$ref` file resolution** — `RefInliner` resolves external refs by inlining schemas as local refs. Handles chained refs, JSON pointers, circular detection. *(review.md #1, review2.md #4)*
- [x] **Lossy schema fallbacks fixed** — untyped schemas now lower to `Object?`, free-form objects to `Map<String, Object?>`, and boolean schemas to `Object?` instead of silent `String` fallbacks. A future pre-validation phase could still improve diagnostics with JSON Pointer locations. *(review2.md 5a/5b/5c, review3.md #5)*
- [x] **`--client` flag removed** — was a no-op; runtime is now handled by separate adapter packages (`degenerate_http`, `degenerate_dio`). *(review.md #7, review2.md 7c)*

### P2: Polish and Trust

- [ ] **CI workflow** — add GitHub Actions for tests, analyze, and snapshot validation. *(review2.md 7d)*
- [x] **Spec-derived base URL helper** — SDK facade emits `static const defaultBaseUrl` from `servers[0].url` when present. *(review2.md #13)*
- [x] **Retry interceptor improvements** — runtime retry middleware now supports jittered exponential backoff, `Retry-After` handling (integer seconds only, for web compatibility), deterministic test hooks, and idempotency-based method gating with override hooks for unsafe methods when explicitly desired. *(review2.md #6)*
- [x] **Vendor extension pass-through** — `x-` fields are naturally ignored at all levels (schema, operation, path, parameter, response, top-level) since the parser only reads known keys. Verified with tests covering Stripe (3,500+ `x-` fields) and dedicated unit tests.
- [ ] **Lazy top-down tree-shaking** — current pipeline lowers all schemas then BFS-prunes unreachable types. For large specs with `--tag`/`--path` filters, lowering operations first and only lowering referenced schemas would reduce memory and time. *(review3.md #2)*

### Architectural Suggestions (from review2.md)

These are cross-cutting improvements that would make multiple P0/P1 items easier to implement.
Items from review3.md added where they don't duplicate existing entries:

- [x] **Parameter serialization layer** — IR preserves `style`, `explode`, `allowReserved` on `IrParameter`. Emitter generates style-aware query serialization. Runtime `ApiQueryParameter` supports repeated keys and reserved-char passthrough.
- [x] **Request-body preparation layer** — media-type-aware serialization: JSON (`jsonEncode`), text (raw), bytes (raw), multipart/form-data (`List<ApiMultipartField>`). Shared `media_type_utils.dart` handles media-type normalization and preference selection. HTTP and Dio adapters convert multipart fields to platform-specific types.
- [x] **Response decoding layer** — media-type-aware deserialization: JSON (all types), text (primitives/enums), bytes (`Uint8List` from `bodyBytes`). Shared logic in `media_type_utils.dart`.
- [ ] **Migrate serialization helpers to `code_builder` Expressions** — `buildFromJsonCode`/`buildToJsonCode` return raw strings mixed with AST construction. Refactoring to return `code_builder` `Expression` objects would enable automatic import tracking and eliminate string-templating edge cases. High effort, low urgency. *(review3.md #3)*
- [x] **Split `TypeLowerer` into normalizer + mapper** — `SchemaNormalizer` handles name canonicalization and discriminator detection; `IrMapper` handles schema→IR translation. `TypeLowerer` deleted. *(review3.md #4)*

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

### Session 12 (2026-03-12) — Inline naming, OneOf generics, union code reduction

- Inline schema naming: priority chain of `title` → single-value enum → parent context + `VariantN` → `InlineObject` fallback
- `_singleEnumHint()` extracts discriminator-like enum values (e.g., `enum: [thread.run.created]`) for naming
- Primitive-only inline unions collapse to `Object` (guarded by `isInline` flag to preserve named top-level unions)
- Created `packages/degenerate_runtime/lib/src/one_of.dart` with `OneOf2`-`OneOf9` sealed generic containers
- Each OneOf class: `.from()` factory, static `.parse()` with typed `fromA`/`fromB`/`canParseA`/`canParseB`, `.toJson()`, `.value`, equality
- `emit_utils.dart`: `isOneOfEligible()`, `oneOfTypeReference()`, `buildOneOfParseCode()`, `_buildCanParseExpr()`
- `file_emitter.dart`: `_emitOneOfTypedef()` emits `typedef X = OneOfN<A, B, ...>` for eligible unions; `_analyzeModel()` tracks `needsOneOf`
- `api_emitter.dart`: `_resolveOneOfRef()` resolves `IrTypeRef` to OneOf-eligible target via type registry for correct deserialization
- 11 OneOf runtime tests, 12 inline naming/collapse lowering tests
- All tests passing, analyzer clean on all directories

### Session 11 (2026-03-10) — Cancel tokens, per-request options, socket-level cancellation

- `CancelToken` and `CancelledException` in `degenerate_runtime`
- `RequestOptions` with `timeout`, `extraHeaders`, `cancelToken` — threaded through generated methods and `ApiRequest`
- Generated `_execute` merges extra headers, creates adapter-level cancel token combining user cancel + timeout timer
- Socket-level cancellation in both adapters: Dio bridges to `dio.CancelToken`; HTTP uses `AbortableRequest`/`AbortableMultipartRequest` with `abortTrigger`
- Timeout via `Timer` + cancel token instead of `Future.timeout()` — actually closes the socket
- Dio adapter converts native timeout exceptions to `TimeoutException` for consistency
- `ApiParseException` for error deserialization failures (was silently nulling out `ApiError.error`)
- `toString()` on all `ApiResult` types
- `rawBody` → `rawError` rename on `ApiError`
- Multipart `contentType` passthrough in both adapters
- 8 cancel token tests, 4 ApiResult tests, adapter cancel/timeout tests
- README: added cancel tokens section, Dio example with granular timeouts, per-request options
- All tests passing, analyzer clean

### Session 10 (2026-03-10) — Multipart/form-data, base URL, retry improvements, serialization cleanup

- Multipart/form-data support end-to-end: runtime `ApiMultipartField` sealed class, HTTP and Dio adapter support, emitter generates `List<ApiMultipartField>` from object schema fields
- Type registry: `ApiEmitter` receives `typeRegistry` to resolve `IrTypeRef` to `IrObject` fields for multipart body generation
- Null-guard correctness: uses `case final x?` pattern for nullable public field promotion; skips guard for non-nullable fields with defaults
- Content-Type header skipped for multipart requests (adapters set it automatically with boundary)
- Spec-derived base URL: SDK facade emits `static const defaultBaseUrl` from `servers[0].url`
- Retry interceptor improvements: jittered exponential backoff, `Retry-After` header parsing (integer seconds only, for web compatibility), idempotency-based method gating, deterministic test hooks
- Reduced string duplication in `buildFromJsonCode` (extracted `_buildFromJsonNonNull` + `_simpleCastFromJson`) and `buildToJsonCode` (consolidated identical arms)
- Consolidated duplicated `_toHeaderString`/`_toQueryString` into `_toStringExpr` in api_emitter
- `application/x-www-form-urlencoded` support: emitter generates `Uri.encodeQueryComponent` key=value pairs joined by `&` as string body from object schema fields; Twilio snapshot now fully generates with zero `UnsupportedError`
- Runtime multipart tests, emitter multipart/form-urlencoded tests, all snapshots updated
- Removed `--client` CLI flag (now handled by adapter packages)

### Session 9 (2026-03-10) — Non-JSON media types, binary responses, query serialization

- Media-type-aware code generation: emitter preserves chosen request/response media type instead of hardcoding JSON
- `application/*+json` detection (e.g. `application/problem+json`) with parameterized media type handling (`application/json; charset=utf-8`)
- `text/plain` request bodies emit raw body writes, text success responses type correctly
- Binary response support end-to-end: `ApiResponse.bodyBytes: Uint8List` with zero-copy when caller provides `Uint8List`
- HTTP and Dio adapters read raw bytes first, preserve `bodyBytes`, decode text with `allowMalformed: true`
- Generated clients deserialize `PrimitiveKind.bytes` from `response.bodyBytes` for non-JSON media types
- Shared `media_type_utils.dart` centralizes `isJsonLikeMediaType`, `normalizeMediaType`, `preferredContent`
- Generator warnings for unsupported non-JSON complex type schemas via `ApiEmitter.collectWarnings()`
- Unsupported non-JSON object/list shapes emit `// TODO:` + `UnsupportedError` in generated code
- `_requestBodyNeedsToJson` renamed to `_typeNeedsToJson` to match actual parameter type
- Cloudflare, OpenAI, Stripe snapshots updated: binary endpoints now return `Uint8List.fromList(response.bodyBytes)` instead of throwing
- New tests: plain-text request/response, `application/problem+json` errors, parameterized JSON media types, binary response deserialization, zero-copy `Uint8List`, Dio adapter binary success/error paths
- Query serialization: IR now carries `style`, `explode`, `allowReserved` on `IrParameter`, populated from OpenAPI spec in `OperationLowerer`
- Runtime `ApiQueryParameter` type supports repeated query keys and per-parameter `allowReserved`
- `ApiRequest.resolveUri()` rewritten to build query strings manually, supporting duplicate keys and reserved-char passthrough
- Emitter generates style-aware query serialization: form-exploded arrays (repeated params), pipeDelimited/spaceDelimited (joined), deepObject objects/maps (bracketed keys), form-exploded objects (per-field params)
- Identity map elision: string arrays emit `tag.join('|')` instead of `tag.map((item) => item).join('|')`
- New tests: exploded form arrays, pipeDelimited arrays, spaceDelimited arrays, deepObject objects, non-exploded form objects, allowReserved passthrough, duplicate query param URI building
- Wire tests for spec-03: repeated/reserved query serialization validated through generated code, allowReserved reserved-char passthrough verified at URI level
- Expanded spec-03 fixture with pipeDelimited, spaceDelimited, and deepObject query params; wire tests verify pipe joining, space joining, and bracketed key serialization through generated code and URI encoding
- Cookie parameters now generate method parameters, populate `ApiRequest.cookies`, and flow into synthesized `Cookie` headers in runtime adapters; `ApiConfig.defaultCookies` added
- `ApiConfig` now supports `defaultQueryParameters`, enabling generated security helpers to attach query-based auth without custom interceptors
- Generated security metadata file now describes security schemes and per-operation/global requirements using runtime `ApiSecurityScheme`, `ApiSecurityRequirement`, and `ApiOAuthFlow` types
- Generated SDK/security helpers now support API key auth in header/query/cookie plus HTTP bearer/basic auth (`withApiKeyAuth`, `withHttpBearer`, `withHttpBasic`, etc.)
- Fixture 06 snapshot updated to verify generated security helpers and requirement metadata; generated package analyzes clean
- Fixed optional headers to always use `if (x != null)` guard instead of broken `?` null-aware element syntax
- Fixed redundant `!` null-assert in guarded query serialization — generated code now uses Dart type promotion
- All tests passing, analyzer clean on all touched files

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
- Added schema fallback warnings in type lowerer (printed by generator)
- Wrote full README with CLI docs, architecture, examples, tested specs

### Session 2 (2026-03-08) — Kubernetes + Totem Mobile fixes
- Fixed Kubernetes allOf-with-$ref bug (152 → 0 errors): `AllOfFlattener` short-circuits single-entry allOf with `$ref`; type lowerer checks for `$ref` after flattening
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
  parser/ref_inliner.dart      Resolve external $ref files to local refs
  normalizer/
    allof_flattener.dart     Merge allOf compositions (used inline during lowering)
    schema_normalizer.dart   Pre-scan: name canonicalization, discriminator detection
  lowering/
    ir_mapper.dart           OpenAPI schemas → IR types (handles $ref and allOf inline)
    type_ref_resolver.dart   Resolve IrTypeRef nodes to concrete types
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
- `13-external-refs.yaml` — multi-file spec with external `$ref` (paths, schemas, chained refs, circular refs)
