// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audit_log_certificates_activated_certificates.dart';/// The details for events with this `type`.
final class AuditLogCertificatesActivated {const AuditLogCertificatesActivated({this.certificates});

factory AuditLogCertificatesActivated.fromJson(Map<String, dynamic> json) { return AuditLogCertificatesActivated(
  certificates: (json['certificates'] as List<dynamic>?)?.map((e) => AuditLogCertificatesActivatedCertificates.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AuditLogCertificatesActivatedCertificates>? certificates;

Map<String, dynamic> toJson() { return {
  if (certificates != null) 'certificates': certificates?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'certificates'}.contains(key)); } 
AuditLogCertificatesActivated copyWith({List<AuditLogCertificatesActivatedCertificates> Function()? certificates}) { return AuditLogCertificatesActivated(
  certificates: certificates != null ? certificates() : this.certificates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogCertificatesActivated &&
          listEquals(certificates, other.certificates); } 
@override int get hashCode { return Object.hashAll(certificates ?? const []).hashCode; } 
@override String toString() { return 'AuditLogCertificatesActivated(certificates: $certificates)'; } 
 }
