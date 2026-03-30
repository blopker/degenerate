// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audit_log_certificates_deactivated_certificates.dart';/// The details for events with this `type`.
final class AuditLogCertificatesDeactivated {const AuditLogCertificatesDeactivated({this.certificates});

factory AuditLogCertificatesDeactivated.fromJson(Map<String, dynamic> json) { return AuditLogCertificatesDeactivated(
  certificates: (json['certificates'] as List<dynamic>?)?.map((e) => AuditLogCertificatesDeactivatedCertificates.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AuditLogCertificatesDeactivatedCertificates>? certificates;

Map<String, dynamic> toJson() { return {
  if (certificates != null) 'certificates': certificates?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'certificates'}.contains(key)); } 
AuditLogCertificatesDeactivated copyWith({List<AuditLogCertificatesDeactivatedCertificates> Function()? certificates}) { return AuditLogCertificatesDeactivated(
  certificates: certificates != null ? certificates() : this.certificates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogCertificatesDeactivated &&
          listEquals(certificates, other.certificates); } 
@override int get hashCode { return Object.hashAll(certificates ?? const []).hashCode; } 
@override String toString() { return 'AuditLogCertificatesDeactivated(certificates: $certificates)'; } 
 }
