// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Components of a CAA record.
@immutable final class DnsRecordsCaaRecordRequestData {const DnsRecordsCaaRecordRequestData({this.flags, this.tag, this.value, });

factory DnsRecordsCaaRecordRequestData.fromJson(Map<String, dynamic> json) {return DnsRecordsCaaRecordRequestData(
  flags: json['flags'] != null ? (json['flags'] as num).toDouble() : null,
  tag: json['tag'] as String?,
  value: json['value'] as String?,
);}

/// Flags for the CAA record.
final double? flags;

/// Name of the property controlled by this record (e.g.: issue, issuewild, iodef).
final String? tag;

/// Value of the record. This field's semantics depend on the chosen tag.
final String? value;

Map<String, dynamic> toJson() {return {
  'flags': ?flags,
  'tag': ?tag,
  'value': ?value,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'flags', 'tag', 'value'}.contains(key));}
DnsRecordsCaaRecordRequestData copyWith({double? Function()? flags, String? Function()? tag, String? Function()? value, }) {return DnsRecordsCaaRecordRequestData(
  flags: flags != null ? flags() : this.flags,
  tag: tag != null ? tag() : this.tag,
  value: value != null ? value() : this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is DnsRecordsCaaRecordRequestData &&
          flags == other.flags &&
          tag == other.tag &&
          value == other.value;}
@override int get hashCode {return Object.hash(flags, tag, value);}
@override String toString() {return 'DnsRecordsCaaRecordRequestData(flags: $flags, tag: $tag, value: $value)';}
}
