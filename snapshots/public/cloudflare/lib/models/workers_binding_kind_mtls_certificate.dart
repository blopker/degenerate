// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_name.dart';@immutable final class WorkersBindingKindMtlsCertificate {const WorkersBindingKindMtlsCertificate({required this.certificateId, required this.name, required this.type, });

factory WorkersBindingKindMtlsCertificate.fromJson(Map<String, dynamic> json) { return WorkersBindingKindMtlsCertificate(
  certificateId: json['certificate_id'] as String,
  name: WorkersBindingName.fromJson(json['name'] as String),
  type: json['type'] as String,
); }

/// Identifier of the certificate to bind to.
final String certificateId;

final WorkersBindingName name;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'certificate_id': certificateId,
  'name': name.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate_id') && json['certificate_id'] is String &&
      json.containsKey('name') &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindMtlsCertificate copyWith({String? certificateId, WorkersBindingName? name, String? type, }) { return WorkersBindingKindMtlsCertificate(
  certificateId: certificateId ?? this.certificateId,
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindMtlsCertificate &&
          certificateId == other.certificateId &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(certificateId, name, type); } 
@override String toString() { return 'WorkersBindingKindMtlsCertificate(certificateId: $certificateId, name: $name, type: $type)'; } 
 }
