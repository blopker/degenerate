// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_bundle_method.dart';import 'tls_certificates_and_hostnames_certificate.dart';final class AnalyzeCertificateAnalyzeCertificateRequest {const AnalyzeCertificateAnalyzeCertificateRequest({this.bundleMethod, this.certificate, });

factory AnalyzeCertificateAnalyzeCertificateRequest.fromJson(Map<String, dynamic> json) { return AnalyzeCertificateAnalyzeCertificateRequest(
  bundleMethod: json['bundle_method'] != null ? TlsCertificatesAndHostnamesBundleMethod.fromJson(json['bundle_method'] as String) : null,
  certificate: json['certificate'] != null ? TlsCertificatesAndHostnamesCertificate.fromJson(json['certificate'] as String) : null,
); }

/// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
final TlsCertificatesAndHostnamesBundleMethod? bundleMethod;

/// The zone's SSL certificate or certificate and the intermediate(s).
final TlsCertificatesAndHostnamesCertificate? certificate;

Map<String, dynamic> toJson() { return {
  if (bundleMethod != null) 'bundle_method': bundleMethod?.toJson(),
  if (certificate != null) 'certificate': certificate?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AnalyzeCertificateAnalyzeCertificateRequest copyWith({TlsCertificatesAndHostnamesBundleMethod Function()? bundleMethod, TlsCertificatesAndHostnamesCertificate Function()? certificate, }) { return AnalyzeCertificateAnalyzeCertificateRequest(
  bundleMethod: bundleMethod != null ? bundleMethod() : this.bundleMethod,
  certificate: certificate != null ? certificate() : this.certificate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AnalyzeCertificateAnalyzeCertificateRequest &&
          bundleMethod == other.bundleMethod &&
          certificate == other.certificate; } 
@override int get hashCode { return Object.hash(bundleMethod, certificate); } 
@override String toString() { return 'AnalyzeCertificateAnalyzeCertificateRequest(bundleMethod: $bundleMethod, certificate: $certificate)'; } 
 }
