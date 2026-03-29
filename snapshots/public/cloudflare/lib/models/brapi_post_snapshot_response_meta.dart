// GENERATED CODE - DO NOT MODIFY BY HAND

final class BrapiPostSnapshotResponseMeta {const BrapiPostSnapshotResponseMeta({this.status, this.title, });

factory BrapiPostSnapshotResponseMeta.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotResponseMeta(
  status: json['status'] != null ? (json['status'] as num).toDouble() : null,
  title: json['title'] as String?,
); }

final double? status;

final String? title;

Map<String, dynamic> toJson() { return {
  'status': ?status,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status', 'title'}.contains(key)); } 
BrapiPostSnapshotResponseMeta copyWith({double Function()? status, String Function()? title, }) { return BrapiPostSnapshotResponseMeta(
  status: status != null ? status() : this.status,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotResponseMeta &&
          status == other.status &&
          title == other.title; } 
@override int get hashCode { return Object.hash(status, title); } 
@override String toString() { return 'BrapiPostSnapshotResponseMeta(status: $status, title: $title)'; } 
 }
