.PHONY: test update_snapshots update_example release publish

test:
	dart analyze packages/*
	dart test
	@for dir in $$(find test/wire -name pubspec.yaml -exec dirname {} \;); do \
		echo "Running wire tests in $$dir..."; \
		(cd $$dir && dart test) || exit 1; \
	done
	dart analyze snapshots/specs/*
	dart analyze example
	dart analyze example_workspace
	dart analyze test
	dart analyze test/wire/*
	dart analyze snapshots/public/*

release:
	dart run scripts/release.dart $(ARGS)

publish:
	dart pub publish -C packages/degenerate_runtime --force
	dart pub publish -C packages/degenerate_http --force
	dart pub publish -C packages/degenerate_dio --force
	dart pub publish -C packages/degenerate --force

update_snapshots:
	UPDATE_SNAPSHOTS=1 dart test test/snapshot_test.dart

update_examples:
	dart run degenerate:degenerate -i example/petstore3.json -o example_workspace/packages --workspace --clean -n petstore_client
	dart run degenerate:degenerate -i example/petstore3.json -o example/lib --clean -n petstore_client
