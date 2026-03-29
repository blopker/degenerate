// GENERATED CODE - DO NOT MODIFY BY HAND

/// The order/priority in which the certificate will be used in a request. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.
extension type const TlsCertificatesAndHostnamesPriority(double value) {
factory TlsCertificatesAndHostnamesPriority.fromJson(num json) => TlsCertificatesAndHostnamesPriority(json.toDouble());

num toJson() => value;

}
