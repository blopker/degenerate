// GENERATED CODE - DO NOT MODIFY BY HAND

/// Components of a NAPTR record.
final class DnsRecordsNaptrRecordData {const DnsRecordsNaptrRecordData({this.flags, this.order, this.preference, this.regex, this.replacement, this.service, });

factory DnsRecordsNaptrRecordData.fromJson(Map<String, dynamic> json) { return DnsRecordsNaptrRecordData(
  flags: json['flags'] as String?,
  order: json['order'] != null ? (json['order'] as num).toDouble() : null,
  preference: json['preference'] != null ? (json['preference'] as num).toDouble() : null,
  regex: json['regex'] as String?,
  replacement: json['replacement'] as String?,
  service: json['service'] as String?,
); }

/// Flags.
final String? flags;

/// Order.
final double? order;

/// Preference.
final double? preference;

/// Regex.
final String? regex;

/// Replacement.
final String? replacement;

/// Service.
final String? service;

Map<String, dynamic> toJson() { return {
  'flags': ?flags,
  'order': ?order,
  'preference': ?preference,
  'regex': ?regex,
  'replacement': ?replacement,
  'service': ?service,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'flags', 'order', 'preference', 'regex', 'replacement', 'service'}.contains(key)); } 
DnsRecordsNaptrRecordData copyWith({String Function()? flags, double Function()? order, double Function()? preference, String Function()? regex, String Function()? replacement, String Function()? service, }) { return DnsRecordsNaptrRecordData(
  flags: flags != null ? flags() : this.flags,
  order: order != null ? order() : this.order,
  preference: preference != null ? preference() : this.preference,
  regex: regex != null ? regex() : this.regex,
  replacement: replacement != null ? replacement() : this.replacement,
  service: service != null ? service() : this.service,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsNaptrRecordData &&
          flags == other.flags &&
          order == other.order &&
          preference == other.preference &&
          regex == other.regex &&
          replacement == other.replacement &&
          service == other.service; } 
@override int get hashCode { return Object.hash(flags, order, preference, regex, replacement, service); } 
@override String toString() { return 'DnsRecordsNaptrRecordData(flags: $flags, order: $order, preference: $preference, regex: $regex, replacement: $replacement, service: $service)'; } 
 }
