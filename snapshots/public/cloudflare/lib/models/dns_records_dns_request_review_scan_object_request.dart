// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_dns_record_patch_request.dart';import 'dns_records_dns_record_scan_batch_reject.dart';@immutable final class DnsRecordsDnsRequestReviewScanObjectRequest {const DnsRecordsDnsRequestReviewScanObjectRequest({this.accepts, this.rejects, });

factory DnsRecordsDnsRequestReviewScanObjectRequest.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsRequestReviewScanObjectRequest(
  accepts: (json['accepts'] as List<dynamic>?)?.map(DnsRecordsDnsRecordPatchRequest.fromJson).toList(),
  rejects: (json['rejects'] as List<dynamic>?)?.map((e) => DnsRecordsDnsRecordScanBatchReject.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DnsRecordsDnsRecordPatchRequest>? accepts;

final List<DnsRecordsDnsRecordScanBatchReject>? rejects;

Map<String, dynamic> toJson() { return {
  if (accepts != null) 'accepts': accepts?.map((e) => e.toJson()).toList(),
  if (rejects != null) 'rejects': rejects?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'accepts', 'rejects'}.contains(key)); } 
DnsRecordsDnsRequestReviewScanObjectRequest copyWith({List<DnsRecordsDnsRecordPatchRequest>? Function()? accepts, List<DnsRecordsDnsRecordScanBatchReject>? Function()? rejects, }) { return DnsRecordsDnsRequestReviewScanObjectRequest(
  accepts: accepts != null ? accepts() : this.accepts,
  rejects: rejects != null ? rejects() : this.rejects,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsRequestReviewScanObjectRequest &&
          listEquals(accepts, other.accepts) &&
          listEquals(rejects, other.rejects); } 
@override int get hashCode { return Object.hash(Object.hashAll(accepts ?? const []), Object.hashAll(rejects ?? const [])); } 
@override String toString() { return 'DnsRecordsDnsRequestReviewScanObjectRequest(accepts: $accepts, rejects: $rejects)'; } 
 }
