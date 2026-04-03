// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// PodCertificateProjection provides a private key and X.509 certificate in the pod filesystem.
@immutable final class PodCertificateProjection {const PodCertificateProjection({required this.keyType, required this.signerName, this.certificateChainPath, this.credentialBundlePath, this.keyPath, this.maxExpirationSeconds, this.userAnnotations, });

factory PodCertificateProjection.fromJson(Map<String, dynamic> json) { return PodCertificateProjection(
  certificateChainPath: json['certificateChainPath'] as String?,
  credentialBundlePath: json['credentialBundlePath'] as String?,
  keyPath: json['keyPath'] as String?,
  keyType: json['keyType'] as String,
  maxExpirationSeconds: json['maxExpirationSeconds'] != null ? (json['maxExpirationSeconds'] as num).toInt() : null,
  signerName: json['signerName'] as String,
  userAnnotations: (json['userAnnotations'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// Write the certificate chain at this path in the projected volume.
/// 
/// Most applications should use credentialBundlePath.  When using keyPath and certificateChainPath, your application needs to check that the key and leaf certificate are consistent, because it is possible to read the files mid-rotation.
final String? certificateChainPath;

/// Write the credential bundle at this path in the projected volume.
/// 
/// The credential bundle is a single file that contains multiple PEM blocks. The first PEM block is a PRIVATE KEY block, containing a PKCS#8 private key.
/// 
/// The remaining blocks are CERTIFICATE blocks, containing the issued certificate chain from the signer (leaf and any intermediates).
/// 
/// Using credentialBundlePath lets your Pod's application code make a single atomic read that retrieves a consistent key and certificate chain.  If you project them to separate files, your application code will need to additionally check that the leaf certificate was issued to the key.
final String? credentialBundlePath;

/// Write the key at this path in the projected volume.
/// 
/// Most applications should use credentialBundlePath.  When using keyPath and certificateChainPath, your application needs to check that the key and leaf certificate are consistent, because it is possible to read the files mid-rotation.
final String? keyPath;

/// The type of keypair Kubelet will generate for the pod.
/// 
/// Valid values are "RSA3072", "RSA4096", "ECDSAP256", "ECDSAP384", "ECDSAP521", and "ED25519".
final String keyType;

/// maxExpirationSeconds is the maximum lifetime permitted for the certificate.
/// 
/// Kubelet copies this value verbatim into the PodCertificateRequests it generates for this projection.
/// 
/// If omitted, kube-apiserver will set it to 86400(24 hours). kube-apiserver will reject values shorter than 3600 (1 hour).  The maximum allowable value is 7862400 (91 days).
/// 
/// The signer implementation is then free to issue a certificate with any lifetime *shorter* than MaxExpirationSeconds, but no shorter than 3600 seconds (1 hour).  This constraint is enforced by kube-apiserver. `kubernetes.io` signers will never issue certificates with a lifetime longer than 24 hours.
final int? maxExpirationSeconds;

/// Kubelet's generated CSRs will be addressed to this signer.
final String signerName;

/// userAnnotations allow pod authors to pass additional information to the signer implementation.  Kubernetes does not restrict or validate this metadata in any way.
/// 
/// These values are copied verbatim into the `spec.unverifiedUserAnnotations` field of the PodCertificateRequest objects that Kubelet creates.
/// 
/// Entries are subject to the same validation as object metadata annotations, with the addition that all keys must be domain-prefixed. No restrictions are placed on values, except an overall size limitation on the entire field.
/// 
/// Signers should document the keys and values they support. Signers should deny requests that contain keys they do not recognize.
final Map<String,String>? userAnnotations;

Map<String, dynamic> toJson() { return {
  'certificateChainPath': ?certificateChainPath,
  'credentialBundlePath': ?credentialBundlePath,
  'keyPath': ?keyPath,
  'keyType': keyType,
  'maxExpirationSeconds': ?maxExpirationSeconds,
  'signerName': signerName,
  'userAnnotations': ?userAnnotations,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('keyType') && json['keyType'] is String &&
      json.containsKey('signerName') && json['signerName'] is String; } 
PodCertificateProjection copyWith({String Function()? certificateChainPath, String Function()? credentialBundlePath, String Function()? keyPath, String? keyType, int Function()? maxExpirationSeconds, String? signerName, Map<String, String> Function()? userAnnotations, }) { return PodCertificateProjection(
  certificateChainPath: certificateChainPath != null ? certificateChainPath() : this.certificateChainPath,
  credentialBundlePath: credentialBundlePath != null ? credentialBundlePath() : this.credentialBundlePath,
  keyPath: keyPath != null ? keyPath() : this.keyPath,
  keyType: keyType ?? this.keyType,
  maxExpirationSeconds: maxExpirationSeconds != null ? maxExpirationSeconds() : this.maxExpirationSeconds,
  signerName: signerName ?? this.signerName,
  userAnnotations: userAnnotations != null ? userAnnotations() : this.userAnnotations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PodCertificateProjection &&
          certificateChainPath == other.certificateChainPath &&
          credentialBundlePath == other.credentialBundlePath &&
          keyPath == other.keyPath &&
          keyType == other.keyType &&
          maxExpirationSeconds == other.maxExpirationSeconds &&
          signerName == other.signerName &&
          userAnnotations == other.userAnnotations; } 
@override int get hashCode { return Object.hash(certificateChainPath, credentialBundlePath, keyPath, keyType, maxExpirationSeconds, signerName, userAnnotations); } 
@override String toString() { return 'PodCertificateProjection(certificateChainPath: $certificateChainPath, credentialBundlePath: $credentialBundlePath, keyPath: $keyPath, keyType: $keyType, maxExpirationSeconds: $maxExpirationSeconds, signerName: $signerName, userAnnotations: $userAnnotations)'; } 
 }
