// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityCreateDisplayNameResponseResult {const EmailSecurityCreateDisplayNameResponseResult({required this.email, required this.isEmailRegex, required this.name, required this.createdAt, required this.id, required this.lastModified, this.comments, this.directoryId, this.directoryNodeId, this.externalDirectoryNodeId, this.provenance, });

factory EmailSecurityCreateDisplayNameResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityCreateDisplayNameResponseResult(
  email: json['email'] as String,
  isEmailRegex: json['is_email_regex'] as bool,
  name: json['name'] as String,
  comments: json['comments'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  directoryId: json['directory_id'] != null ? (json['directory_id'] as num).toInt() : null,
  directoryNodeId: json['directory_node_id'] != null ? (json['directory_node_id'] as num).toInt() : null,
  externalDirectoryNodeId: json['external_directory_node_id'] as String?,
  id: (json['id'] as num).toInt(),
  lastModified: DateTime.parse(json['last_modified'] as String),
  provenance: json['provenance'] as String?,
); }

final String email;

final bool isEmailRegex;

final String name;

final String? comments;

final DateTime createdAt;

final int? directoryId;

final int? directoryNodeId;

final String? externalDirectoryNodeId;

final int id;

final DateTime lastModified;

final String? provenance;

Map<String, dynamic> toJson() { return {
  'email': email,
  'is_email_regex': isEmailRegex,
  'name': name,
  'comments': ?comments,
  'created_at': createdAt.toIso8601String(),
  'directory_id': ?directoryId,
  'directory_node_id': ?directoryNodeId,
  'external_directory_node_id': ?externalDirectoryNodeId,
  'id': id,
  'last_modified': lastModified.toIso8601String(),
  'provenance': ?provenance,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('is_email_regex') && json['is_email_regex'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('last_modified') && json['last_modified'] is String; } 
EmailSecurityCreateDisplayNameResponseResult copyWith({String? email, bool? isEmailRegex, String? name, String? Function()? comments, DateTime? createdAt, int? Function()? directoryId, int? Function()? directoryNodeId, String? Function()? externalDirectoryNodeId, int? id, DateTime? lastModified, String? Function()? provenance, }) { return EmailSecurityCreateDisplayNameResponseResult(
  email: email ?? this.email,
  isEmailRegex: isEmailRegex ?? this.isEmailRegex,
  name: name ?? this.name,
  comments: comments != null ? comments() : this.comments,
  createdAt: createdAt ?? this.createdAt,
  directoryId: directoryId != null ? directoryId() : this.directoryId,
  directoryNodeId: directoryNodeId != null ? directoryNodeId() : this.directoryNodeId,
  externalDirectoryNodeId: externalDirectoryNodeId != null ? externalDirectoryNodeId() : this.externalDirectoryNodeId,
  id: id ?? this.id,
  lastModified: lastModified ?? this.lastModified,
  provenance: provenance != null ? provenance() : this.provenance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityCreateDisplayNameResponseResult &&
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
@override String toString() { return 'EmailSecurityCreateDisplayNameResponseResult(email: $email, isEmailRegex: $isEmailRegex, name: $name, comments: $comments, createdAt: $createdAt, directoryId: $directoryId, directoryNodeId: $directoryNodeId, externalDirectoryNodeId: $externalDirectoryNodeId, id: $id, lastModified: $lastModified, provenance: $provenance)'; } 
 }
