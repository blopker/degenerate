// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Components of a URI record.
@immutable final class DnsRecordsUriRecordRequestData {const DnsRecordsUriRecordRequestData({this.target, this.weight, });

factory DnsRecordsUriRecordRequestData.fromJson(Map<String, dynamic> json) {return DnsRecordsUriRecordRequestData(
  target: json['target'] as String?,
  weight: json['weight'] != null ? (json['weight'] as num).toDouble() : null,
);}

/// The record content.
final String? target;

/// The record weight.
final double? weight;

Map<String, dynamic> toJson() {return {
  'target': ?target,
  'weight': ?weight,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'target', 'weight'}.contains(key));}
DnsRecordsUriRecordRequestData copyWith({String? Function()? target, double? Function()? weight, }) {return DnsRecordsUriRecordRequestData(
  target: target != null ? target() : this.target,
  weight: weight != null ? weight() : this.weight,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is DnsRecordsUriRecordRequestData &&
          target == other.target &&
          weight == other.weight;}
@override int get hashCode {return Object.hash(target, weight);}
@override String toString() {return 'DnsRecordsUriRecordRequestData(target: $target, weight: $weight)';}
}
