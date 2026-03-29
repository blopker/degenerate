// GENERATED CODE - DO NOT MODIFY BY HAND

/// A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request_host_header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
extension type const TlsCertificatesAndHostnamesCustomOriginSni(String value) {
factory TlsCertificatesAndHostnamesCustomOriginSni.fromJson(String json) => TlsCertificatesAndHostnamesCustomOriginSni(json);

String toJson() => value;

}
