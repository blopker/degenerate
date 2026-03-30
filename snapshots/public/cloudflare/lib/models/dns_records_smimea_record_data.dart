// GENERATED CODE - DO NOT MODIFY BY HAND

/// Components of a SMIMEA record.
final class DnsRecordsSmimeaRecordData {const DnsRecordsSmimeaRecordData({this.certificate, this.matchingType, this.selector, this.usage, });

factory DnsRecordsSmimeaRecordData.fromJson(Map<String, dynamic> json) { return DnsRecordsSmimeaRecordData(
  certificate: json['certificate'] as String?,
  matchingType: json['matching_type'] != null ? (json['matching_type'] as num).toDouble() : null,
  selector: json['selector'] != null ? (json['selector'] as num).toDouble() : null,
  usage: json['usage'] != null ? (json['usage'] as num).toDouble() : null,
); }

/// Certificate.
final String? certificate;

/// Matching Type.
final double? matchingType;

/// Selector.
final double? selector;

/// Usage.
final double? usage;

Map<String, dynamic> toJson() { return {
  'certificate': ?certificate,
  'matching_type': ?matchingType,
  'selector': ?selector,
  'usage': ?usage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'certificate', 'matching_type', 'selector', 'usage'}.contains(key)); } 
DnsRecordsSmimeaRecordData copyWith({String Function()? certificate, double Function()? matchingType, double Function()? selector, double Function()? usage, }) { return DnsRecordsSmimeaRecordData(
  certificate: certificate != null ? certificate() : this.certificate,
  matchingType: matchingType != null ? matchingType() : this.matchingType,
  selector: selector != null ? selector() : this.selector,
  usage: usage != null ? usage() : this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsSmimeaRecordData &&
          certificate == other.certificate &&
          matchingType == other.matchingType &&
          selector == other.selector &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(certificate, matchingType, selector, usage); } 
@override String toString() { return 'DnsRecordsSmimeaRecordData(certificate: $certificate, matchingType: $matchingType, selector: $selector, usage: $usage)'; } 
 }
