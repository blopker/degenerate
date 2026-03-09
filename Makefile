test:
	dart test

# test_unit:
	# todo

update_snapshots:
	UPDATE_SNAPSHOTS=1 dart test test/snapshot_test.dart
