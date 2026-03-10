.PHONY: *

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

# test_unit:
	# todo

update_snapshots:
	UPDATE_SNAPSHOTS=1 dart test test/snapshot_test.dart
