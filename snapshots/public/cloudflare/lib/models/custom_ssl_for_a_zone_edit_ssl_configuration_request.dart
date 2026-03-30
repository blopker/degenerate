// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_bundle_method.dart';import 'tls_certificates_and_hostnames_certificate.dart';import 'tls_certificates_and_hostnames_deploy.dart';import 'tls_certificates_and_hostnames_geo_restrictions.dart';import 'tls_certificates_and_hostnames_policy.dart';import 'tls_certificates_and_hostnames_private_key.dart';final class CustomSslForAZoneEditSslConfigurationRequest {const CustomSslForAZoneEditSslConfigurationRequest({this.bundleMethod, this.certificate, this.deploy, this.geoRestrictions, this.policy, this.privateKey, });

factory CustomSslForAZoneEditSslConfigurationRequest.fromJson(Map<String, dynamic> json) { return CustomSslForAZoneEditSslConfigurationRequest(
  bundleMethod: json['bundle_method'] != null ? TlsCertificatesAndHostnamesBundleMethod.fromJson(json['bundle_method'] as String) : null,
  certificate: json['certificate'] != null ? TlsCertificatesAndHostnamesCertificate.fromJson(json['certificate'] as String) : null,
  deploy: json['deploy'] != null ? TlsCertificatesAndHostnamesDeploy.fromJson(json['deploy'] as String) : null,
  geoRestrictions: json['geo_restrictions'] != null ? TlsCertificatesAndHostnamesGeoRestrictions.fromJson(json['geo_restrictions'] as Map<String, dynamic>) : null,
  policy: json['policy'] != null ? TlsCertificatesAndHostnamesPolicy.fromJson(json['policy'] as String) : null,
  privateKey: json['private_key'] != null ? TlsCertificatesAndHostnamesPrivateKey.fromJson(json['private_key'] as String) : null,
); }

/// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
final TlsCertificatesAndHostnamesBundleMethod? bundleMethod;

/// The zone's SSL certificate or certificate and the intermediate(s).
final TlsCertificatesAndHostnamesCertificate? certificate;

/// The environment to deploy the certificate to, defaults to production
final TlsCertificatesAndHostnamesDeploy? deploy;

final TlsCertificatesAndHostnamesGeoRestrictions? geoRestrictions;

/// Specify the policy that determines the region where your private key will be held locally. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Any combination of countries, specified by their two letter country code (https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) can be chosen, such as 'country: IN', as well as 'region: EU' which refers to the EU region. If there are too few data centers satisfying the policy, it will be rejected.
/// Note: The API accepts this field as either "policy" or "policy_restrictions" in requests. Responses return this field as "policy_restrictions".
final TlsCertificatesAndHostnamesPolicy? policy;

/// The zone's private key.
final TlsCertificatesAndHostnamesPrivateKey? privateKey;

Map<String, dynamic> toJson() { return {
  if (bundleMethod != null) 'bundle_method': bundleMethod?.toJson(),
  if (certificate != null) 'certificate': certificate?.toJson(),
  if (deploy != null) 'deploy': deploy?.toJson(),
  if (geoRestrictions != null) 'geo_restrictions': geoRestrictions?.toJson(),
  if (policy != null) 'policy': policy?.toJson(),
  if (privateKey != null) 'private_key': privateKey?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bundle_method', 'certificate', 'deploy', 'geo_restrictions', 'policy', 'private_key'}.contains(key)); } 
CustomSslForAZoneEditSslConfigurationRequest copyWith({TlsCertificatesAndHostnamesBundleMethod Function()? bundleMethod, TlsCertificatesAndHostnamesCertificate Function()? certificate, TlsCertificatesAndHostnamesDeploy Function()? deploy, TlsCertificatesAndHostnamesGeoRestrictions Function()? geoRestrictions, TlsCertificatesAndHostnamesPolicy Function()? policy, TlsCertificatesAndHostnamesPrivateKey Function()? privateKey, }) { return CustomSslForAZoneEditSslConfigurationRequest(
  bundleMethod: bundleMethod != null ? bundleMethod() : this.bundleMethod,
  certificate: certificate != null ? certificate() : this.certificate,
  deploy: deploy != null ? deploy() : this.deploy,
  geoRestrictions: geoRestrictions != null ? geoRestrictions() : this.geoRestrictions,
  policy: policy != null ? policy() : this.policy,
  privateKey: privateKey != null ? privateKey() : this.privateKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomSslForAZoneEditSslConfigurationRequest &&
          bundleMethod == other.bundleMethod &&
          certificate == other.certificate &&
          deploy == other.deploy &&
          geoRestrictions == other.geoRestrictions &&
          policy == other.policy &&
          privateKey == other.privateKey; } 
@override int get hashCode { return Object.hash(bundleMethod, certificate, deploy, geoRestrictions, policy, privateKey); } 
@override String toString() { return 'CustomSslForAZoneEditSslConfigurationRequest(bundleMethod: $bundleMethod, certificate: $certificate, deploy: $deploy, geoRestrictions: $geoRestrictions, policy: $policy, privateKey: $privateKey)'; } 
 }
