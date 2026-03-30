// GENERATED CODE - DO NOT MODIFY BY HAND

/// Components of a SSHFP record.
final class DnsRecordsSshfpRecordData {const DnsRecordsSshfpRecordData({this.algorithm, this.fingerprint, this.type, });

factory DnsRecordsSshfpRecordData.fromJson(Map<String, dynamic> json) { return DnsRecordsSshfpRecordData(
  algorithm: json['algorithm'] != null ? (json['algorithm'] as num).toDouble() : null,
  fingerprint: json['fingerprint'] as String?,
  type: json['type'] != null ? (json['type'] as num).toDouble() : null,
); }

/// Algorithm.
final double? algorithm;

/// Fingerprint.
final String? fingerprint;

/// Type.
final double? type;

Map<String, dynamic> toJson() { return {
  'algorithm': ?algorithm,
  'fingerprint': ?fingerprint,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'algorithm', 'fingerprint', 'type'}.contains(key)); } 
DnsRecordsSshfpRecordData copyWith({double Function()? algorithm, String Function()? fingerprint, double Function()? type, }) { return DnsRecordsSshfpRecordData(
  algorithm: algorithm != null ? algorithm() : this.algorithm,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsSshfpRecordData &&
          algorithm == other.algorithm &&
          fingerprint == other.fingerprint &&
          type == other.type; } 
@override int get hashCode { return Object.hash(algorithm, fingerprint, type); } 
@override String toString() { return 'DnsRecordsSshfpRecordData(algorithm: $algorithm, fingerprint: $fingerprint, type: $type)'; } 
 }
