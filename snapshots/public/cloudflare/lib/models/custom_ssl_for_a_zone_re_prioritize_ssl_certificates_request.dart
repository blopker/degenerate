// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_ssl_for_a_zone_re_prioritize_ssl_certificates_request_certificates.dart';final class CustomSslForAZoneRePrioritizeSslCertificatesRequest {const CustomSslForAZoneRePrioritizeSslCertificatesRequest({required this.certificates});

factory CustomSslForAZoneRePrioritizeSslCertificatesRequest.fromJson(Map<String, dynamic> json) { return CustomSslForAZoneRePrioritizeSslCertificatesRequest(
  certificates: (json['certificates'] as List<dynamic>).map((e) => CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Array of ordered certificates.
final List<CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates> certificates;

Map<String, dynamic> toJson() { return {
  'certificates': certificates.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificates'); } 
CustomSslForAZoneRePrioritizeSslCertificatesRequest copyWith({List<CustomSslForAZoneRePrioritizeSslCertificatesRequestCertificates>? certificates}) { return CustomSslForAZoneRePrioritizeSslCertificatesRequest(
  certificates: certificates ?? this.certificates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomSslForAZoneRePrioritizeSslCertificatesRequest &&
          listEquals(certificates, other.certificates); } 
@override int get hashCode { return Object.hashAll(certificates).hashCode; } 
@override String toString() { return 'CustomSslForAZoneRePrioritizeSslCertificatesRequest(certificates: $certificates)'; } 
 }
