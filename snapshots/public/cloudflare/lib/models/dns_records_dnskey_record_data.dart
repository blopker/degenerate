// GENERATED CODE - DO NOT MODIFY BY HAND

/// Components of a DNSKEY record.
final class DnsRecordsDnskeyRecordData {const DnsRecordsDnskeyRecordData({this.algorithm, this.flags, this.protocol, this.publicKey, });

factory DnsRecordsDnskeyRecordData.fromJson(Map<String, dynamic> json) { return DnsRecordsDnskeyRecordData(
  algorithm: json['algorithm'] != null ? (json['algorithm'] as num).toDouble() : null,
  flags: json['flags'] != null ? (json['flags'] as num).toDouble() : null,
  protocol: json['protocol'] != null ? (json['protocol'] as num).toDouble() : null,
  publicKey: json['public_key'] as String?,
); }

/// Algorithm.
final double? algorithm;

/// Flags.
final double? flags;

/// Protocol.
final double? protocol;

/// Public Key.
final String? publicKey;

Map<String, dynamic> toJson() { return {
  'algorithm': ?algorithm,
  'flags': ?flags,
  'protocol': ?protocol,
  'public_key': ?publicKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'algorithm', 'flags', 'protocol', 'public_key'}.contains(key)); } 
DnsRecordsDnskeyRecordData copyWith({double Function()? algorithm, double Function()? flags, double Function()? protocol, String Function()? publicKey, }) { return DnsRecordsDnskeyRecordData(
  algorithm: algorithm != null ? algorithm() : this.algorithm,
  flags: flags != null ? flags() : this.flags,
  protocol: protocol != null ? protocol() : this.protocol,
  publicKey: publicKey != null ? publicKey() : this.publicKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnskeyRecordData &&
          algorithm == other.algorithm &&
          flags == other.flags &&
          protocol == other.protocol &&
          publicKey == other.publicKey; } 
@override int get hashCode { return Object.hash(algorithm, flags, protocol, publicKey); } 
@override String toString() { return 'DnsRecordsDnskeyRecordData(algorithm: $algorithm, flags: $flags, protocol: $protocol, publicKey: $publicKey)'; } 
 }
