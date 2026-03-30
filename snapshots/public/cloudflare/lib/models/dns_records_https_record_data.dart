// GENERATED CODE - DO NOT MODIFY BY HAND

/// Components of a HTTPS record.
final class DnsRecordsHttpsRecordData {const DnsRecordsHttpsRecordData({this.priority, this.target, this.value, });

factory DnsRecordsHttpsRecordData.fromJson(Map<String, dynamic> json) { return DnsRecordsHttpsRecordData(
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
DnsRecordsHttpsRecordData copyWith({double Function()? priority, String Function()? target, String Function()? value, }) { return DnsRecordsHttpsRecordData(
  priority: priority != null ? priority() : this.priority,
  target: target != null ? target() : this.target,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsHttpsRecordData &&
          priority == other.priority &&
          target == other.target &&
          value == other.value; } 
@override int get hashCode { return Object.hash(priority, target, value); } 
@override String toString() { return 'DnsRecordsHttpsRecordData(priority: $priority, target: $target, value: $value)'; } 
 }
