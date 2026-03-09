# Development Process

Use the gitignored outputs/ folder for experimenting and investigating outputs. Do not use /tmp/.

Popular openapi specs are in test/fixtures, we have committed snapshot outputs in test/snapshots.

The full openapi 3.1.1 spec is in openapi_specs/. This generator only supports Openapi 3+. Non-conforming specs should generate code, but emit warnings.

Use a "Senior Dart Engineer" subagent to review generated clients. Outputs should be as good as hand-made code.

Outputs should be strict and typesafe. However, backwards compatible changes to the server should not break deployed clients.

Use TDD, every change should have a failing test first.
Write tests before implementation. When fixing bugs, first write a failing test that reproduces the issue, then fix it. All tests are in the test/ folder.

Make sure `dart analyze` runs clean on outputs.
