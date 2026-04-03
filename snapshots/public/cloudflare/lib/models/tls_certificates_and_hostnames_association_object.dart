// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Certificate deployment status for the given service.
extension type const TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasStatus(String value) {
factory TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasStatus.fromJson(String json) => TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasStatus(json);

String toJson() => value;

}
/// The service using the certificate.
extension type const TlsCertificatesAndHostnamesService(String value) {
factory TlsCertificatesAndHostnamesService.fromJson(String json) => TlsCertificatesAndHostnamesService(json);

String toJson() => value;

}
@immutable final class TlsCertificatesAndHostnamesAssociationObject {const TlsCertificatesAndHostnamesAssociationObject({this.service, this.status, });

factory TlsCertificatesAndHostnamesAssociationObject.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesAssociationObject(
  service: json['service'] != null ? TlsCertificatesAndHostnamesService.fromJson(json['service'] as String) : null,
  status: json['status'] != null ? TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasStatus.fromJson(json['status'] as String) : null,
); }

final TlsCertificatesAndHostnamesService? service;

final TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasStatus? status;

Map<String, dynamic> toJson() { return {
  if (service != null) 'service': service?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'service', 'status'}.contains(key)); } 
TlsCertificatesAndHostnamesAssociationObject copyWith({TlsCertificatesAndHostnamesService Function()? service, TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasStatus Function()? status, }) { return TlsCertificatesAndHostnamesAssociationObject(
  service: service != null ? service() : this.service,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesAssociationObject &&
          service == other.service &&
          status == other.status; } 
@override int get hashCode { return Object.hash(service, status); } 
@override String toString() { return 'TlsCertificatesAndHostnamesAssociationObject(service: $service, status: $status)'; } 
 }
