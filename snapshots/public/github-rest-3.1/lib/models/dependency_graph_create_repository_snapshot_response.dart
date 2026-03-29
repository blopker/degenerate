// GENERATED CODE - DO NOT MODIFY BY HAND

final class DependencyGraphCreateRepositorySnapshotResponse {const DependencyGraphCreateRepositorySnapshotResponse({required this.id, required this.createdAt, required this.result, required this.message, });

factory DependencyGraphCreateRepositorySnapshotResponse.fromJson(Map<String, dynamic> json) { return DependencyGraphCreateRepositorySnapshotResponse(
  id: (json['id'] as num).toInt(),
  createdAt: json['created_at'] as String,
  result: json['result'] as String,
  message: json['message'] as String,
); }

/// ID of the created snapshot.
final int id;

/// The time at which the snapshot was created.
final String createdAt;

/// Either "SUCCESS", "ACCEPTED", or "INVALID". "SUCCESS" indicates that the snapshot was successfully created and the repository's dependencies were updated. "ACCEPTED" indicates that the snapshot was successfully created, but the repository's dependencies were not updated. "INVALID" indicates that the snapshot was malformed.
final String result;

/// A message providing further details about the result, such as why the dependencies were not updated.
final String message;

Map<String, dynamic> toJson() { return {
  'id': id,
  'created_at': createdAt,
  'result': result,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('result') && json['result'] is String &&
      json.containsKey('message') && json['message'] is String; } 
DependencyGraphCreateRepositorySnapshotResponse copyWith({int? id, String? createdAt, String? result, String? message, }) { return DependencyGraphCreateRepositorySnapshotResponse(
  id: id ?? this.id,
  createdAt: createdAt ?? this.createdAt,
  result: result ?? this.result,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DependencyGraphCreateRepositorySnapshotResponse &&
          id == other.id &&
          createdAt == other.createdAt &&
          result == other.result &&
          message == other.message; } 
@override int get hashCode { return Object.hash(id, createdAt, result, message); } 
@override String toString() { return 'DependencyGraphCreateRepositorySnapshotResponse(id: $id, createdAt: $createdAt, result: $result, message: $message)'; } 
 }
