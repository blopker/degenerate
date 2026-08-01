// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_dataset_upload_status.dart';@immutable final class DlpDocumentFingerprint {const DlpDocumentFingerprint({required this.createdAt, required this.entryId, required this.id, required this.matchPercent, required this.name, required this.status, required this.updatedAt, this.description = '', this.fileName = const Omittable.absent(), this.version = const Omittable.absent(), });

factory DlpDocumentFingerprint.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprint(
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String,
  entryId: json['entry_id'] as String,
  fileName: json.containsKey('file_name') ? Omittable(json['file_name'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  matchPercent: (json['match_percent'] as num).toInt(),
  name: json['name'] as String,
  status: DlpDatasetUploadStatus.fromJson(json['status'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  version: json.containsKey('version') ? Omittable(json['version'] != null ? (json['version'] as num).toInt() : null) : const Omittable.absent(),
); }

final DateTime createdAt;

final String description;

final String entryId;

final Omittable<String?> fileName;

final String id;

final int matchPercent;

final String name;

final DlpDatasetUploadStatus status;

final DateTime updatedAt;

final Omittable<int?> version;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'description': description,
  'entry_id': entryId,
  if (fileName.isPresent) 'file_name': fileName.value,
  'id': id,
  'match_percent': matchPercent,
  'name': name,
  'status': status.toJson(),
  'updated_at': updatedAt.toIso8601String(),
  if (version.isPresent) 'version': version.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('entry_id') && json['entry_id'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('match_percent') && json['match_percent'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('status') &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
DlpDocumentFingerprint copyWith({DateTime? createdAt, String? description, String? entryId, Omittable<String?>? fileName, String? id, int? matchPercent, String? name, DlpDatasetUploadStatus? status, DateTime? updatedAt, Omittable<int?>? version, }) { return DlpDocumentFingerprint(
  createdAt: createdAt ?? this.createdAt,
  description: description ?? this.description,
  entryId: entryId ?? this.entryId,
  fileName: fileName ?? this.fileName,
  id: id ?? this.id,
  matchPercent: matchPercent ?? this.matchPercent,
  name: name ?? this.name,
  status: status ?? this.status,
  updatedAt: updatedAt ?? this.updatedAt,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprint &&
          createdAt == other.createdAt &&
          description == other.description &&
          entryId == other.entryId &&
          fileName == other.fileName &&
          id == other.id &&
          matchPercent == other.matchPercent &&
          name == other.name &&
          status == other.status &&
          updatedAt == other.updatedAt &&
          version == other.version; } 
@override int get hashCode { return Object.hash(createdAt, description, entryId, fileName, id, matchPercent, name, status, updatedAt, version); } 
@override String toString() { return 'DlpDocumentFingerprint(createdAt: $createdAt, description: $description, entryId: $entryId, fileName: $fileName, id: $id, matchPercent: $matchPercent, name: $name, status: $status, updatedAt: $updatedAt, version: $version)'; } 
 }
