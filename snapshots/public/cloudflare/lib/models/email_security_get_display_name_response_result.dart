// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityGetDisplayNameResponseResult {const EmailSecurityGetDisplayNameResponseResult({required this.email, required this.isEmailRegex, required this.name, required this.createdAt, required this.id, required this.lastModified, this.comments = const Omittable.absent(), this.directoryId = const Omittable.absent(), this.directoryNodeId = const Omittable.absent(), this.externalDirectoryNodeId = const Omittable.absent(), this.provenance = const Omittable.absent(), });

factory EmailSecurityGetDisplayNameResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityGetDisplayNameResponseResult(
  email: json['email'] as String,
  isEmailRegex: json['is_email_regex'] as bool,
  name: json['name'] as String,
  comments: json.containsKey('comments') ? Omittable(json['comments'] as String?) : const Omittable.absent(),
  createdAt: DateTime.parse(json['created_at'] as String),
  directoryId: json.containsKey('directory_id') ? Omittable(json['directory_id'] != null ? (json['directory_id'] as num).toInt() : null) : const Omittable.absent(),
  directoryNodeId: json.containsKey('directory_node_id') ? Omittable(json['directory_node_id'] != null ? (json['directory_node_id'] as num).toInt() : null) : const Omittable.absent(),
  externalDirectoryNodeId: json.containsKey('external_directory_node_id') ? Omittable(json['external_directory_node_id'] as String?) : const Omittable.absent(),
  id: (json['id'] as num).toInt(),
  lastModified: DateTime.parse(json['last_modified'] as String),
  provenance: json.containsKey('provenance') ? Omittable(json['provenance'] as String?) : const Omittable.absent(),
); }

final String email;

final bool isEmailRegex;

final String name;

final Omittable<String?> comments;

final DateTime createdAt;

final Omittable<int?> directoryId;

final Omittable<int?> directoryNodeId;

final Omittable<String?> externalDirectoryNodeId;

final int id;

final DateTime lastModified;

final Omittable<String?> provenance;

Map<String, dynamic> toJson() { return {
  'email': email,
  'is_email_regex': isEmailRegex,
  'name': name,
  if (comments.isPresent) 'comments': comments.value,
  'created_at': createdAt.toIso8601String(),
  if (directoryId.isPresent) 'directory_id': directoryId.value,
  if (directoryNodeId.isPresent) 'directory_node_id': directoryNodeId.value,
  if (externalDirectoryNodeId.isPresent) 'external_directory_node_id': externalDirectoryNodeId.value,
  'id': id,
  'last_modified': lastModified.toIso8601String(),
  if (provenance.isPresent) 'provenance': provenance.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('is_email_regex') && json['is_email_regex'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('last_modified') && json['last_modified'] is String; } 
EmailSecurityGetDisplayNameResponseResult copyWith({String? email, bool? isEmailRegex, String? name, Omittable<String?>? comments, DateTime? createdAt, Omittable<int?>? directoryId, Omittable<int?>? directoryNodeId, Omittable<String?>? externalDirectoryNodeId, int? id, DateTime? lastModified, Omittable<String?>? provenance, }) { return EmailSecurityGetDisplayNameResponseResult(
  email: email ?? this.email,
  isEmailRegex: isEmailRegex ?? this.isEmailRegex,
  name: name ?? this.name,
  comments: comments ?? this.comments,
  createdAt: createdAt ?? this.createdAt,
  directoryId: directoryId ?? this.directoryId,
  directoryNodeId: directoryNodeId ?? this.directoryNodeId,
  externalDirectoryNodeId: externalDirectoryNodeId ?? this.externalDirectoryNodeId,
  id: id ?? this.id,
  lastModified: lastModified ?? this.lastModified,
  provenance: provenance ?? this.provenance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetDisplayNameResponseResult &&
          email == other.email &&
          isEmailRegex == other.isEmailRegex &&
          name == other.name &&
          comments == other.comments &&
          createdAt == other.createdAt &&
          directoryId == other.directoryId &&
          directoryNodeId == other.directoryNodeId &&
          externalDirectoryNodeId == other.externalDirectoryNodeId &&
          id == other.id &&
          lastModified == other.lastModified &&
          provenance == other.provenance; } 
@override int get hashCode { return Object.hash(email, isEmailRegex, name, comments, createdAt, directoryId, directoryNodeId, externalDirectoryNodeId, id, lastModified, provenance); } 
@override String toString() { return 'EmailSecurityGetDisplayNameResponseResult(email: $email, isEmailRegex: $isEmailRegex, name: $name, comments: $comments, createdAt: $createdAt, directoryId: $directoryId, directoryNodeId: $directoryNodeId, externalDirectoryNodeId: $externalDirectoryNodeId, id: $id, lastModified: $lastModified, provenance: $provenance)'; } 
 }
