// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Components of a DS record.
@immutable final class DnsRecordsDsRecordData {const DnsRecordsDsRecordData({this.algorithm, this.digest, this.digestType, this.keyTag, });

factory DnsRecordsDsRecordData.fromJson(Map<String, dynamic> json) { return DnsRecordsDsRecordData(
  algorithm: json['algorithm'] != null ? (json['algorithm'] as num).toDouble() : null,
  digest: json['digest'] as String?,
  digestType: json['digest_type'] != null ? (json['digest_type'] as num).toDouble() : null,
  keyTag: json['key_tag'] != null ? (json['key_tag'] as num).toDouble() : null,
); }

/// Algorithm.
final double? algorithm;

/// Digest.
final String? digest;

/// Digest Type.
final double? digestType;

/// Key Tag.
final double? keyTag;

Map<String, dynamic> toJson() { return {
  'algorithm': ?algorithm,
  'digest': ?digest,
  'digest_type': ?digestType,
  'key_tag': ?keyTag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'algorithm', 'digest', 'digest_type', 'key_tag'}.contains(key)); } 
DnsRecordsDsRecordData copyWith({double Function()? algorithm, String Function()? digest, double Function()? digestType, double Function()? keyTag, }) { return DnsRecordsDsRecordData(
  algorithm: algorithm != null ? algorithm() : this.algorithm,
  digest: digest != null ? digest() : this.digest,
  digestType: digestType != null ? digestType() : this.digestType,
  keyTag: keyTag != null ? keyTag() : this.keyTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDsRecordData &&
          algorithm == other.algorithm &&
          digest == other.digest &&
          digestType == other.digestType &&
          keyTag == other.keyTag; } 
@override int get hashCode { return Object.hash(algorithm, digest, digestType, keyTag); } 
@override String toString() { return 'DnsRecordsDsRecordData(algorithm: $algorithm, digest: $digest, digestType: $digestType, keyTag: $keyTag)'; } 
 }
