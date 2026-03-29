// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_sslpost.dart';/// The custom hostname that will point to your hostname via CNAME.
extension type const TlsCertificatesAndHostnamesHostnamePost(String value) {
factory TlsCertificatesAndHostnamesHostnamePost.fromJson(String json) => TlsCertificatesAndHostnamesHostnamePost(json);

String toJson() => value;

}
final class CustomHostnameForAZoneCreateCustomHostnameRequest {const CustomHostnameForAZoneCreateCustomHostnameRequest({this.customMetadata, required this.hostname, this.ssl, });

factory CustomHostnameForAZoneCreateCustomHostnameRequest.fromJson(Map<String, dynamic> json) { return CustomHostnameForAZoneCreateCustomHostnameRequest(
  customMetadata: (json['custom_metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  hostname: TlsCertificatesAndHostnamesHostnamePost.fromJson(json['hostname'] as String),
  ssl: json['ssl'] != null ? TlsCertificatesAndHostnamesSslpost.fromJson(json['ssl'] as Map<String, dynamic>) : null,
); }

/// Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
final Map<String,String>? customMetadata;

/// The custom hostname that will point to your hostname via CNAME.
final TlsCertificatesAndHostnamesHostnamePost hostname;

final TlsCertificatesAndHostnamesSslpost? ssl;

Map<String, dynamic> toJson() { return {
  'custom_metadata': ?customMetadata,
  'hostname': hostname.toJson(),
  if (ssl != null) 'ssl': ssl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('hostname'); } 
CustomHostnameForAZoneCreateCustomHostnameRequest copyWith({Map<String, String> Function()? customMetadata, TlsCertificatesAndHostnamesHostnamePost? hostname, TlsCertificatesAndHostnamesSslpost Function()? ssl, }) { return CustomHostnameForAZoneCreateCustomHostnameRequest(
  customMetadata: customMetadata != null ? customMetadata() : this.customMetadata,
  hostname: hostname ?? this.hostname,
  ssl: ssl != null ? ssl() : this.ssl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomHostnameForAZoneCreateCustomHostnameRequest &&
          customMetadata == other.customMetadata &&
          hostname == other.hostname &&
          ssl == other.ssl; } 
@override int get hashCode { return Object.hash(customMetadata, hostname, ssl); } 
@override String toString() { return 'CustomHostnameForAZoneCreateCustomHostnameRequest(customMetadata: $customMetadata, hostname: $hostname, ssl: $ssl)'; } 
 }
