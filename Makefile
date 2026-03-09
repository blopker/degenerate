.PHONY: *

test:
	dart test
	dart analyze lib
	dart analyze snapshots/specs

# test_unit:
	# todo

update_snapshots:
	UPDATE_SNAPSHOTS=1 dart test test/snapshot_test.dart
