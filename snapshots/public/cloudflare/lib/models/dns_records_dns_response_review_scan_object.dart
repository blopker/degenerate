// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_identifier.dart';@immutable final class DnsRecordsDnsResponseReviewScanObject {const DnsRecordsDnsResponseReviewScanObject({this.accepts, this.rejects, });

factory DnsRecordsDnsResponseReviewScanObject.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseReviewScanObject(
  accepts: (json['accepts'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  rejects: (json['rejects'] as List<dynamic>?)?.map((e) => DnsRecordsIdentifier.fromJson(e as String)).toList(),
); }

final List<Map<String,dynamic>>? accepts;

final List<DnsRecordsIdentifier>? rejects;

Map<String, dynamic> toJson() { return {
  if (accepts != null) 'accepts': accepts?.map((e) => e).toList(),
  if (rejects != null) 'rejects': rejects?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'accepts', 'rejects'}.contains(key)); } 
DnsRecordsDnsResponseReviewScanObject copyWith({List<Map<String, dynamic>> Function()? accepts, List<DnsRecordsIdentifier> Function()? rejects, }) { return DnsRecordsDnsResponseReviewScanObject(
  accepts: accepts != null ? accepts() : this.accepts,
  rejects: rejects != null ? rejects() : this.rejects,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseReviewScanObject &&
          listEquals(accepts, other.accepts) &&
          listEquals(rejects, other.rejects); } 
@override int get hashCode { return Object.hash(Object.hashAll(accepts ?? const []), Object.hashAll(rejects ?? const [])); } 
@override String toString() { return 'DnsRecordsDnsResponseReviewScanObject(accepts: $accepts, rejects: $rejects)'; } 
 }
