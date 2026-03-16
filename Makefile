.PHONY: test update_snapshots update_example release publish

test:
	dart test
	@for dir in $$(find test/wire -name pubspec.yaml -exec dirname {} \;); do \
		echo "Running wire tests in $$dir..."; \
		(cd $$dir && dart test) || exit 1; \
	done
	dart analyze lib
	dart analyze snapshots/specs
	dart analyze example
	dart analyze test
	dart analyze packages
	dart analyze snapshots/public/*

update_snapshots:
	UPDATE_SNAPSHOTS=1 dart test test/snapshot_test.dart

release:
	dart run scripts/release.dart $(ARGS)

publish:
	dart pub publish -C packages/degenerate_runtime --force
	dart pub publish -C packages/degenerate_http --force
	dart pub publish -C packages/degenerate_dio --force
	dart pub publish --force
	git checkout -- pubspec.lock

update_example:
	dart run bin/degenerate.dart -i example/petstore3.json -o example/petstore_client --clean -n petstore_client
