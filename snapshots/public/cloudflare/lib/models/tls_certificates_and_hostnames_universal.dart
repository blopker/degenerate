// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
/// 
/// By disabling Universal SSL, you understand that the following Cloudflare settings and preferences will result in visitors being unable to visit your domain unless you have uploaded a custom certificate or purchased an advanced certificate.
/// 
/// * HSTS
/// * Always Use HTTPS
/// * Opportunistic Encryption
/// * Onion Routing
/// * Any Page Rules redirecting traffic to HTTPS
/// 
/// Similarly, any HTTP redirect to HTTPS at the origin while the Cloudflare proxy is enabled will result in users being unable to visit your site without a valid certificate at Cloudflare's edge.
/// 
/// If you do not have a valid custom or advanced certificate at Cloudflare's edge and are unsure if any of the above Cloudflare settings are enabled, or if any HTTP redirects exist at your origin, we advise leaving Universal SSL enabled for your domain.
extension type const TlsCertificatesAndHostnamesSchemasEnabled(bool value) {
factory TlsCertificatesAndHostnamesSchemasEnabled.fromJson(bool json) => TlsCertificatesAndHostnamesSchemasEnabled(json);

bool toJson() => value;

}
@immutable final class TlsCertificatesAndHostnamesUniversal {const TlsCertificatesAndHostnamesUniversal({this.enabled});

factory TlsCertificatesAndHostnamesUniversal.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesUniversal(
  enabled: json['enabled'] != null ? TlsCertificatesAndHostnamesSchemasEnabled.fromJson(json['enabled'] as bool) : null,
); }

/// Disabling Universal SSL removes any currently active Universal SSL certificates for your zone from the edge and prevents any future Universal SSL certificates from being ordered. If there are no advanced certificates or custom certificates uploaded for the domain, visitors will be unable to access the domain over HTTPS.
/// 
/// By disabling Universal SSL, you understand that the following Cloudflare settings and preferences will result in visitors being unable to visit your domain unless you have uploaded a custom certificate or purchased an advanced certificate.
/// 
/// * HSTS
/// * Always Use HTTPS
/// * Opportunistic Encryption
/// * Onion Routing
/// * Any Page Rules redirecting traffic to HTTPS
/// 
/// Similarly, any HTTP redirect to HTTPS at the origin while the Cloudflare proxy is enabled will result in users being unable to visit your site without a valid certificate at Cloudflare's edge.
/// 
/// If you do not have a valid custom or advanced certificate at Cloudflare's edge and are unsure if any of the above Cloudflare settings are enabled, or if any HTTP redirects exist at your origin, we advise leaving Universal SSL enabled for your domain.
final TlsCertificatesAndHostnamesSchemasEnabled? enabled;

Map<String, dynamic> toJson() { return {
  if (enabled != null) 'enabled': enabled?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
TlsCertificatesAndHostnamesUniversal copyWith({TlsCertificatesAndHostnamesSchemasEnabled Function()? enabled}) { return TlsCertificatesAndHostnamesUniversal(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesUniversal &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesUniversal(enabled: $enabled)'; } 
 }
