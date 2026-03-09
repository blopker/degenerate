Use the gitignored outputs/ folder for testing.
Popular openapi specs are in test/fixtures, we have committed snapshot outputs in test/snapshots.
The full openapi 3.1.1 spec is in openapi_specs/. This generator only supports Openapi 3+. Non-conforming specs should generate code, but emit warnings.

Use a "Senior Dart Engineer" subagent to review generated clients. Outputs should be as good as hand-made code.

Use TDD, every change should have a failing test first.
Make sure `dart analyze` runs clean on outputs.

The spec for this project is in `dartgen-spec.md`.

Outputs should be strict and typesafe. However, backwards compatible changes to the server should not break deployed clients.
