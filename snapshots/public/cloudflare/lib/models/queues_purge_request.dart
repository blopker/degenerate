// GENERATED CODE - DO NOT MODIFY BY HAND

final class QueuesPurgeRequest {const QueuesPurgeRequest({this.deleteMessagesPermanently});

factory QueuesPurgeRequest.fromJson(Map<String, dynamic> json) { return QueuesPurgeRequest(
  deleteMessagesPermanently: json['delete_messages_permanently'] as bool?,
); }

/// Confimation that all messages will be deleted permanently.
final bool? deleteMessagesPermanently;

Map<String, dynamic> toJson() { return {
  'delete_messages_permanently': ?deleteMessagesPermanently,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'delete_messages_permanently'}.contains(key)); } 
QueuesPurgeRequest copyWith({bool Function()? deleteMessagesPermanently}) { return QueuesPurgeRequest(
  deleteMessagesPermanently: deleteMessagesPermanently != null ? deleteMessagesPermanently() : this.deleteMessagesPermanently,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueuesPurgeRequest &&
          deleteMessagesPermanently == other.deleteMessagesPermanently; } 
@override int get hashCode { return deleteMessagesPermanently.hashCode; } 
@override String toString() { return 'QueuesPurgeRequest(deleteMessagesPermanently: $deleteMessagesPermanently)'; } 
 }
