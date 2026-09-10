// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Scim Error
@immutable final class ScimError {const ScimError({this.message = const Omittable.absent(), this.documentationUrl = const Omittable.absent(), this.detail = const Omittable.absent(), this.status, this.scimType = const Omittable.absent(), this.schemas, });

factory ScimError.fromJson(Map<String, dynamic> json) { return ScimError(
  message: json.containsKey('message') ? Omittable(json['message'] as String?) : const Omittable.absent(),
  documentationUrl: json.containsKey('documentation_url') ? Omittable(json['documentation_url'] as String?) : const Omittable.absent(),
  detail: json.containsKey('detail') ? Omittable(json['detail'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? (json['status'] as num).toInt() : null,
  scimType: json.containsKey('scimType') ? Omittable(json['scimType'] as String?) : const Omittable.absent(),
  schemas: (json['schemas'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final Omittable<String?> message;

final Omittable<String?> documentationUrl;

final Omittable<String?> detail;

final int? status;

final Omittable<String?> scimType;

final List<String>? schemas;

Map<String, dynamic> toJson() { return {
  if (message.isPresent) 'message': message.value,
  if (documentationUrl.isPresent) 'documentation_url': documentationUrl.value,
  if (detail.isPresent) 'detail': detail.value,
  'status': ?status,
  if (scimType.isPresent) 'scimType': scimType.value,
  'schemas': ?schemas,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'documentation_url', 'detail', 'status', 'scimType', 'schemas'}.contains(key)); } 
ScimError copyWith({Omittable<String?>? message, Omittable<String?>? documentationUrl, Omittable<String?>? detail, int? Function()? status, Omittable<String?>? scimType, List<String>? Function()? schemas, }) { return ScimError(
  message: message ?? this.message,
  documentationUrl: documentationUrl ?? this.documentationUrl,
  detail: detail ?? this.detail,
  status: status != null ? status() : this.status,
  scimType: scimType ?? this.scimType,
  schemas: schemas != null ? schemas() : this.schemas,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ScimError &&
          message == other.message &&
          documentationUrl == other.documentationUrl &&
          detail == other.detail &&
          status == other.status &&
          scimType == other.scimType &&
          listEquals(schemas, other.schemas); } 
@override int get hashCode { return Object.hash(message, documentationUrl, detail, status, scimType, Object.hashAll(schemas ?? const [])); } 
@override String toString() { return 'ScimError(message: $message, documentationUrl: $documentationUrl, detail: $detail, status: $status, scimType: $scimType, schemas: $schemas)'; } 
 }
