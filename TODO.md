# Degenerate — OpenAPI → Dart Code Generator TODO

## Current State (2026-03-08)

### What Works
- **Full pipeline**: Parse YAML/JSON → Lower to IR (with inline allOf flattening and $ref resolution) → Emit Dart via code_builder → Format via dart_style (parallel isolates) → Write
- **125 unit tests** all passing, `dart analyze lib/` clean on generator source
- **CLI**: `--input`, `--output`, `--name`, `--client http|none`, `--include-deprecated`, `--verbose`, `--dry-run`
- **Forward-compatible**: enums use `final class` pattern preserving unknown raw values; discriminated unions and untagged unions have `$Unknown` fallback variants
- **OpenAPI 3.1 support**: nullable `anyOf: [Type, {type: null}]` pattern handled correctly
- **Parallel formatting**: dart_style formatting runs across all CPU cores via isolates (~2.4x speedup on large specs)
- **README** with full documentation

### Spec Scorecard (dart analyze on generated output)

| Spec | Files | Status |
|------|-------|--------|
| Petstore OAI (3.0) | 119 | ✅ 0 issues |
| Unions (custom fixture) | 453 | ✅ 0 issues |
| Circular refs (custom fixture) | 157 | ✅ 0 issues |
| Twilio (35k lines) | 35,821 | ✅ 0 issues |
| Shopify (50k lines) | 49,950 | ✅ 0 issues |
| Kubernetes (39k lines, JSON) | 39,336 | ✅ 0 issues |
| Totem Mobile (3.1) | ~4k | ✅ 0 issues |
| OpenAI | 2,317 | ✅ 0 issues |
| GitHub REST 3.1 | 6,401 | ✅ 0 issues |
| Cloudflare | 14,580 | ✅ 0 issues |
| Stripe (162k lines) | 162,324 | ⏳ Not attempted |
| DigitalOcean | 2,682 | ⚠️ Skipped — uses external $ref files |

---

## Next Priority

### 1. Emit concrete HttpApiClient adapter
- Spec section 5 says to emit `http_api_client.dart` with the `package:http` adapter
- Currently only the abstract `ApiClient` interface is emitted — users can't actually make HTTP calls without writing their own adapter
- Should be emitted when `--client http` (the default)
- **This is the #1 blocker for real-world usage**

### 2. Error response deserialization
- Default/error responses define error models (e.g., Petstore `Error`) but generated code returns `rawBody: String?` instead of a typed error
- Should deserialize error bodies when the response schema is known
- This is important for real-world API clients

### 3. Extension types for branded primitives
- Named schemas that are just primitives with `format` (e.g., `UserId: string+uuid`) should generate `extension type const UserId(String value)`.

---

## Remaining Features

### High Priority
- [ ] **Emit concrete HttpApiClient adapter** (see above)
- [ ] **Error response deserialization** (see above)
- [ ] **Extension types for branded primitives** (see above)

### Medium Priority
- [ ] **Determinism test** — run generator twice on same input, assert byte-identical output
- [ ] **Remove phantom `http` dep** — generated `pubspec.yaml` always includes `http: ^1.2.0` even when `--client none`
- [ ] **Try Stripe spec** — 162k lines, heavy `anyOf` usage, vendor extensions

### Low Priority
- [ ] **`--client=dio` adapter** — emit Dio adapter
- [ ] **Vendor extension pass-through** — skip `x-` fields gracefully (already mostly works, not tested)

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
test/
  fixtures/                  OpenAPI spec files for testing
  snapshots/                 Committed golden output (petstore, unions, circular, + public specs)
scratch/                     Ephemeral test builds (.gitignored)
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
