// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_certificates_components_schemas_name.dart';final class AccessMtlsAuthenticationAddAnMtlsCertificateRequest {const AccessMtlsAuthenticationAddAnMtlsCertificateRequest({this.associatedHostnames, required this.certificate, required this.name, });

factory AccessMtlsAuthenticationAddAnMtlsCertificateRequest.fromJson(Map<String, dynamic> json) { return AccessMtlsAuthenticationAddAnMtlsCertificateRequest(
  associatedHostnames: (json['associated_hostnames'] as List<dynamic>?)?.map((e) => e as String).toList(),
  certificate: json['certificate'] as String,
  name: AccessCertificatesComponentsSchemasName.fromJson(json['name'] as String),
); }

/// The hostnames of the applications that will use this certificate.
final List<String>? associatedHostnames;

/// The certificate content.
final String certificate;

/// The name of the certificate.
final AccessCertificatesComponentsSchemasName name;

Map<String, dynamic> toJson() { return {
  'associated_hostnames': ?associatedHostnames,
  'certificate': certificate,
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificate') && json['certificate'] is String &&
      json.containsKey('name'); } 
AccessMtlsAuthenticationAddAnMtlsCertificateRequest copyWith({List<String> Function()? associatedHostnames, String? certificate, AccessCertificatesComponentsSchemasName? name, }) { return AccessMtlsAuthenticationAddAnMtlsCertificateRequest(
  associatedHostnames: associatedHostnames != null ? associatedHostnames() : this.associatedHostnames,
  certificate: certificate ?? this.certificate,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessMtlsAuthenticationAddAnMtlsCertificateRequest &&
          listEquals(associatedHostnames, other.associatedHostnames) &&
          certificate == other.certificate &&
          name == other.name; } 
@override int get hashCode { return Object.hash(Object.hashAll(associatedHostnames ?? const []), certificate, name); } 
@override String toString() { return 'AccessMtlsAuthenticationAddAnMtlsCertificateRequest(associatedHostnames: $associatedHostnames, certificate: $certificate, name: $name)'; } 
 }
