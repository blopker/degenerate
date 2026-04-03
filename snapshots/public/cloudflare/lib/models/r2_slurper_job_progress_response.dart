// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_slurper_job_status.dart';@immutable final class R2SlurperJobProgressResponse {const R2SlurperJobProgressResponse({this.createdAt, this.failedObjects, this.id, this.objects, this.skippedObjects, this.status, this.transferredObjects, });

factory R2SlurperJobProgressResponse.fromJson(Map<String, dynamic> json) { return R2SlurperJobProgressResponse(
  createdAt: json['createdAt'] as String?,
  failedObjects: json['failedObjects'] != null ? (json['failedObjects'] as num).toInt() : null,
  id: json['id'] as String?,
  objects: json['objects'] != null ? (json['objects'] as num).toInt() : null,
  skippedObjects: json['skippedObjects'] != null ? (json['skippedObjects'] as num).toInt() : null,
  status: json['status'] != null ? R2SlurperJobStatus.fromJson(json['status'] as String) : null,
  transferredObjects: json['transferredObjects'] != null ? (json['transferredObjects'] as num).toInt() : null,
); }

final String? createdAt;

final int? failedObjects;

final String? id;

final int? objects;

final int? skippedObjects;

final R2SlurperJobStatus? status;

final int? transferredObjects;

Map<String, dynamic> toJson() { return {
  'createdAt': ?createdAt,
  'failedObjects': ?failedObjects,
  'id': ?id,
  'objects': ?objects,
  'skippedObjects': ?skippedObjects,
  if (status != null) 'status': status?.toJson(),
  'transferredObjects': ?transferredObjects,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'createdAt', 'failedObjects', 'id', 'objects', 'skippedObjects', 'status', 'transferredObjects'}.contains(key)); } 
R2SlurperJobProgressResponse copyWith({String Function()? createdAt, int Function()? failedObjects, String Function()? id, int Function()? objects, int Function()? skippedObjects, R2SlurperJobStatus Function()? status, int Function()? transferredObjects, }) { return R2SlurperJobProgressResponse(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  failedObjects: failedObjects != null ? failedObjects() : this.failedObjects,
  id: id != null ? id() : this.id,
  objects: objects != null ? objects() : this.objects,
  skippedObjects: skippedObjects != null ? skippedObjects() : this.skippedObjects,
  status: status != null ? status() : this.status,
  transferredObjects: transferredObjects != null ? transferredObjects() : this.transferredObjects,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SlurperJobProgressResponse &&
          createdAt == other.createdAt &&
          failedObjects == other.failedObjects &&
          id == other.id &&
          objects == other.objects &&
          skippedObjects == other.skippedObjects &&
          status == other.status &&
          transferredObjects == other.transferredObjects; } 
@override int get hashCode { return Object.hash(createdAt, failedObjects, id, objects, skippedObjects, status, transferredObjects); } 
@override String toString() { return 'R2SlurperJobProgressResponse(createdAt: $createdAt, failedObjects: $failedObjects, id: $id, objects: $objects, skippedObjects: $skippedObjects, status: $status, transferredObjects: $transferredObjects)'; } 
 }
