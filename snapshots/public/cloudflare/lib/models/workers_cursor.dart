// GENERATED CODE - DO NOT MODIFY BY HAND

/// Opaque token indicating the position from which to continue when requesting the next set of records. A valid value for the cursor can be obtained from the cursors object in the result_info structure.
extension type const WorkersCursor(String value) {
factory WorkersCursor.fromJson(String json) => WorkersCursor(json);

String toJson() => value;

}
