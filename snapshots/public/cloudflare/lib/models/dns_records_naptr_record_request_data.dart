// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Components of a NAPTR record.
@immutable final class DnsRecordsNaptrRecordRequestData {const DnsRecordsNaptrRecordRequestData({this.flags, this.order, this.preference, this.regex, this.replacement, this.service, });

factory DnsRecordsNaptrRecordRequestData.fromJson(Map<String, dynamic> json) { return DnsRecordsNaptrRecordRequestData(
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
DnsRecordsNaptrRecordRequestData copyWith({String? Function()? flags, double? Function()? order, double? Function()? preference, String? Function()? regex, String? Function()? replacement, String? Function()? service, }) { return DnsRecordsNaptrRecordRequestData(
  flags: flags != null ? flags() : this.flags,
  order: order != null ? order() : this.order,
  preference: preference != null ? preference() : this.preference,
  regex: regex != null ? regex() : this.regex,
  replacement: replacement != null ? replacement() : this.replacement,
  service: service != null ? service() : this.service,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsNaptrRecordRequestData &&
          flags == other.flags &&
          order == other.order &&
          preference == other.preference &&
          regex == other.regex &&
          replacement == other.replacement &&
          service == other.service; } 
@override int get hashCode { return Object.hash(flags, order, preference, regex, replacement, service); } 
@override String toString() { return 'DnsRecordsNaptrRecordRequestData(flags: $flags, order: $order, preference: $preference, regex: $regex, replacement: $replacement, service: $service)'; } 
 }
