// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_a_record.dart';import 'dns_records_aaaa_record.dart';import 'dns_records_cname_record.dart';import 'dns_records_dns_record_batch_delete.dart';import 'dns_records_dns_record_batch_patch.dart';import 'dns_records_dns_record_batch_put.dart';import 'dns_records_dns_record_post.dart';import 'dns_records_dns_record_with_data.dart';import 'dns_records_mx_record.dart';import 'dns_records_ns_record.dart';import 'dns_records_openpgpkey_record.dart';import 'dns_records_ptr_record.dart';import 'dns_records_txt_record.dart';@immutable final class DnsRecordsDnsRequestBatchObject {const DnsRecordsDnsRequestBatchObject({this.deletes, this.patches, this.posts, this.puts, });

factory DnsRecordsDnsRequestBatchObject.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsRequestBatchObject(
  deletes: (json['deletes'] as List<dynamic>?)?.map((e) => DnsRecordsDnsRecordBatchDelete.fromJson(e as Map<String, dynamic>)).toList(),
  patches: (json['patches'] as List<dynamic>?)?.map((e) => DnsRecordsDnsRecordBatchPatch.fromJson(e as Map<String, dynamic>)).toList(),
  posts: (json['posts'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => OneOf8.parse(v, fromA: (v) => DnsRecordsARecord.fromJson(v as Map<String, dynamic>), fromB: (v) => DnsRecordsAaaaRecord.fromJson(v as Map<String, dynamic>), fromC: (v) => DnsRecordsCnameRecord.fromJson(v as Map<String, dynamic>), fromD: (v) => DnsRecordsMxRecord.fromJson(v as Map<String, dynamic>), fromE: (v) => DnsRecordsNsRecord.fromJson(v as Map<String, dynamic>), fromF: (v) => DnsRecordsOpenpgpkeyRecord.fromJson(v as Map<String, dynamic>), fromG: (v) => DnsRecordsPtrRecord.fromJson(v as Map<String, dynamic>), fromH: (v) => DnsRecordsTxtRecord.fromJson(v as Map<String, dynamic>),), fromB: (v) => DnsRecordsDnsRecordWithData.fromJson(v as Map<String, dynamic>),)).toList(),
  puts: (json['puts'] as List<dynamic>?)?.map((e) => DnsRecordsDnsRecordBatchPut.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DnsRecordsDnsRecordBatchDelete>? deletes;

final List<DnsRecordsDnsRecordBatchPatch>? patches;

final List<DnsRecordsDnsRecordPost>? posts;

final List<DnsRecordsDnsRecordBatchPut>? puts;

Map<String, dynamic> toJson() { return {
  if (deletes != null) 'deletes': deletes?.map((e) => e.toJson()).toList(),
  if (patches != null) 'patches': patches?.map((e) => e.toJson()).toList(),
  if (posts != null) 'posts': posts?.map((e) => e.toJson()).toList(),
  if (puts != null) 'puts': puts?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deletes', 'patches', 'posts', 'puts'}.contains(key)); } 
DnsRecordsDnsRequestBatchObject copyWith({List<DnsRecordsDnsRecordBatchDelete> Function()? deletes, List<DnsRecordsDnsRecordBatchPatch> Function()? patches, List<DnsRecordsDnsRecordPost> Function()? posts, List<DnsRecordsDnsRecordBatchPut> Function()? puts, }) { return DnsRecordsDnsRequestBatchObject(
  deletes: deletes != null ? deletes() : this.deletes,
  patches: patches != null ? patches() : this.patches,
  posts: posts != null ? posts() : this.posts,
  puts: puts != null ? puts() : this.puts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsRequestBatchObject &&
          listEquals(deletes, other.deletes) &&
          listEquals(patches, other.patches) &&
          listEquals(posts, other.posts) &&
          listEquals(puts, other.puts); } 
@override int get hashCode { return Object.hash(Object.hashAll(deletes ?? const []), Object.hashAll(patches ?? const []), Object.hashAll(posts ?? const []), Object.hashAll(puts ?? const [])); } 
@override String toString() { return 'DnsRecordsDnsRequestBatchObject(deletes: $deletes, patches: $patches, posts: $posts, puts: $puts)'; } 
 }
