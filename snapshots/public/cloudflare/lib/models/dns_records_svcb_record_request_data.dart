// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Components of a SVCB record.
@immutable final class DnsRecordsSvcbRecordRequestData {const DnsRecordsSvcbRecordRequestData({this.priority, this.target, this.value, });

factory DnsRecordsSvcbRecordRequestData.fromJson(Map<String, dynamic> json) { return DnsRecordsSvcbRecordRequestData(
  priority: json['priority'] != null ? (json['priority'] as num).toDouble() : null,
  target: json['target'] as String?,
  value: json['value'] as String?,
); }

/// Priority.
final double? priority;

/// Target.
final String? target;

/// Value.
final String? value;

Map<String, dynamic> toJson() { return {
  'priority': ?priority,
  'target': ?target,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'priority', 'target', 'value'}.contains(key)); } 
DnsRecordsSvcbRecordRequestData copyWith({double? Function()? priority, String? Function()? target, String? Function()? value, }) { return DnsRecordsSvcbRecordRequestData(
  priority: priority != null ? priority() : this.priority,
  target: target != null ? target() : this.target,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsSvcbRecordRequestData &&
          priority == other.priority &&
          target == other.target &&
          value == other.value; } 
@override int get hashCode { return Object.hash(priority, target, value); } 
@override String toString() { return 'DnsRecordsSvcbRecordRequestData(priority: $priority, target: $target, value: $value)'; } 
 }
