// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_identifier.dart';import 'tls_certificates_and_hostnames_priority.dart';final class CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates {const CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates({this.id, this.priority, });

factory CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates.fromJson(Map<String, dynamic> json) { return CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates(
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
  priority: json['priority'] != null ? TlsCertificatesAndHostnamesPriority.fromJson(json['priority'] as num) : null,
); }

/// Identifier.
final TlsCertificatesAndHostnamesIdentifier? id;

/// The order/priority in which the certificate will be used in a request. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.
final TlsCertificatesAndHostnamesPriority? priority;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (priority != null) 'priority': priority?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates copyWith({TlsCertificatesAndHostnamesIdentifier Function()? id, TlsCertificatesAndHostnamesPriority Function()? priority, }) { return CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates(
  id: id != null ? id() : this.id,
  priority: priority != null ? priority() : this.priority,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates &&
          id == other.id &&
          priority == other.priority; } 
@override int get hashCode { return Object.hash(id, priority); } 
@override String toString() { return 'CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates(id: $id, priority: $priority)'; } 
 }
