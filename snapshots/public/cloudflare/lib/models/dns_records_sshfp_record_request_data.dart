// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Components of a SSHFP record.
@immutable final class DnsRecordsSshfpRecordRequestData {const DnsRecordsSshfpRecordRequestData({this.algorithm, this.fingerprint, this.type, });

factory DnsRecordsSshfpRecordRequestData.fromJson(Map<String, dynamic> json) { return DnsRecordsSshfpRecordRequestData(
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
DnsRecordsSshfpRecordRequestData copyWith({double? Function()? algorithm, String? Function()? fingerprint, double? Function()? type, }) { return DnsRecordsSshfpRecordRequestData(
  algorithm: algorithm != null ? algorithm() : this.algorithm,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsSshfpRecordRequestData &&
          algorithm == other.algorithm &&
          fingerprint == other.fingerprint &&
          type == other.type; } 
@override int get hashCode { return Object.hash(algorithm, fingerprint, type); } 
@override String toString() { return 'DnsRecordsSshfpRecordRequestData(algorithm: $algorithm, fingerprint: $fingerprint, type: $type)'; } 
 }
