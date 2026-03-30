// GENERATED CODE - DO NOT MODIFY BY HAND

/// Opaque token indicating the position from which to continue when requesting the next set of records. A valid value for the cursor can be obtained from the cursors object in the result_info structure.
extension type const WorkersCursor(String value) {
factory WorkersCursor.fromJson(String json) => WorkersCursor(json);

String toJson() => value;

}
final class DurableObjectsNamespaceListObjectsResponseResultInfo {const DurableObjectsNamespaceListObjectsResponseResultInfo({this.count, this.cursor, });

factory DurableObjectsNamespaceListObjectsResponseResultInfo.fromJson(Map<String, dynamic> json) { return DurableObjectsNamespaceListObjectsResponseResultInfo(
  count: json['count'] != null ? (json['count'] as num).toDouble() : null,
  cursor: json['cursor'] != null ? WorkersCursor.fromJson(json['cursor'] as String) : null,
); }

/// Total results returned based on your list parameters.
final double? count;

/// Opaque token indicating the position from which to continue when requesting the next set of records. A valid value for the cursor can be obtained from the cursors object in the result_info structure.
final WorkersCursor? cursor;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  if (cursor != null) 'cursor': cursor?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'cursor'}.contains(key)); } 
DurableObjectsNamespaceListObjectsResponseResultInfo copyWith({double Function()? count, WorkersCursor Function()? cursor, }) { return DurableObjectsNamespaceListObjectsResponseResultInfo(
  count: count != null ? count() : this.count,
  cursor: cursor != null ? cursor() : this.cursor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DurableObjectsNamespaceListObjectsResponseResultInfo &&
          count == other.count &&
          cursor == other.cursor; } 
@override int get hashCode { return Object.hash(count, cursor); } 
@override String toString() { return 'DurableObjectsNamespaceListObjectsResponseResultInfo(count: $count, cursor: $cursor)'; } 
 }
