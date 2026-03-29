// GENERATED CODE - DO NOT MODIFY BY HAND

final class CertificateCertificateDetails {const CertificateCertificateDetails({this.validAt, this.expiresAt, this.content, });

factory CertificateCertificateDetails.fromJson(Map<String, dynamic> json) { return CertificateCertificateDetails(
  validAt: json['valid_at'] != null ? (json['valid_at'] as num).toInt() : null,
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  content: json['content'] as String?,
); }

/// The Unix timestamp (in seconds) of when the certificate becomes valid.
final int? validAt;

/// The Unix timestamp (in seconds) of when the certificate expires.
final int? expiresAt;

/// The content of the certificate in PEM format.
final String? content;

Map<String, dynamic> toJson() { return {
  'valid_at': ?validAt,
  'expires_at': ?expiresAt,
  'content': ?content,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'valid_at', 'expires_at', 'content'}.contains(key)); } 
CertificateCertificateDetails copyWith({int Function()? validAt, int Function()? expiresAt, String Function()? content, }) { return CertificateCertificateDetails(
  validAt: validAt != null ? validAt() : this.validAt,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  content: content != null ? content() : this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CertificateCertificateDetails &&
          validAt == other.validAt &&
          expiresAt == other.expiresAt &&
          content == other.content; } 
@override int get hashCode { return Object.hash(validAt, expiresAt, content); } 
@override String toString() { return 'CertificateCertificateDetails(validAt: $validAt, expiresAt: $expiresAt, content: $content)'; } 
 }
