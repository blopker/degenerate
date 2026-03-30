// GENERATED CODE - DO NOT MODIFY BY HAND

/// Components of a CERT record.
final class DnsRecordsCertRecordData {const DnsRecordsCertRecordData({this.algorithm, this.certificate, this.keyTag, this.type, });

factory DnsRecordsCertRecordData.fromJson(Map<String, dynamic> json) { return DnsRecordsCertRecordData(
  algorithm: json['algorithm'] != null ? (json['algorithm'] as num).toDouble() : null,
  certificate: json['certificate'] as String?,
  keyTag: json['key_tag'] != null ? (json['key_tag'] as num).toDouble() : null,
  type: json['type'] != null ? (json['type'] as num).toDouble() : null,
); }

/// Algorithm.
final double? algorithm;

/// Certificate.
final String? certificate;

/// Key Tag.
final double? keyTag;

/// Type.
final double? type;

Map<String, dynamic> toJson() { return {
  'algorithm': ?algorithm,
  'certificate': ?certificate,
  'key_tag': ?keyTag,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'algorithm', 'certificate', 'key_tag', 'type'}.contains(key)); } 
DnsRecordsCertRecordData copyWith({double Function()? algorithm, String Function()? certificate, double Function()? keyTag, double Function()? type, }) { return DnsRecordsCertRecordData(
  algorithm: algorithm != null ? algorithm() : this.algorithm,
  certificate: certificate != null ? certificate() : this.certificate,
  keyTag: keyTag != null ? keyTag() : this.keyTag,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsCertRecordData &&
          algorithm == other.algorithm &&
          certificate == other.certificate &&
          keyTag == other.keyTag &&
          type == other.type; } 
@override int get hashCode { return Object.hash(algorithm, certificate, keyTag, type); } 
@override String toString() { return 'DnsRecordsCertRecordData(algorithm: $algorithm, certificate: $certificate, keyTag: $keyTag, type: $type)'; } 
 }
