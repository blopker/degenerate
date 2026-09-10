// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_dns_record_batch_delete.dart';import 'dns_records_dns_record_batch_patch_request.dart';import 'dns_records_dns_record_batch_put_request.dart';import 'dns_records_dns_record_post_request.dart';@immutable final class DnsRecordsDnsRequestBatchObjectRequest {const DnsRecordsDnsRequestBatchObjectRequest({this.deletes, this.patches, this.posts, this.puts, });

factory DnsRecordsDnsRequestBatchObjectRequest.fromJson(Map<String, dynamic> json) {return DnsRecordsDnsRequestBatchObjectRequest(
  deletes: (json['deletes'] as List<dynamic>?)?.map((e) => DnsRecordsDnsRecordBatchDelete.fromJson(e as Map<String, dynamic>)).toList(),
  patches: (json['patches'] as List<dynamic>?)?.map((e) => DnsRecordsDnsRecordBatchPatchRequest.fromJson(e as Map<String, dynamic>)).toList(),
  posts: (json['posts'] as List<dynamic>?)?.map(DnsRecordsDnsRecordPostRequest.fromJson).toList(),
  puts: (json['puts'] as List<dynamic>?)?.map((e) => DnsRecordsDnsRecordBatchPutRequest.fromJson(e as Map<String, dynamic>)).toList(),
);}

final List<DnsRecordsDnsRecordBatchDelete>? deletes;

final List<DnsRecordsDnsRecordBatchPatchRequest>? patches;

final List<DnsRecordsDnsRecordPostRequest>? posts;

final List<DnsRecordsDnsRecordBatchPutRequest>? puts;

Map<String, dynamic> toJson() {return {
  if (deletes != null) 'deletes': deletes?.map((e) => e.toJson()).toList(),
  if (patches != null) 'patches': patches?.map((e) => e.toJson()).toList(),
  if (posts != null) 'posts': posts?.map((e) => e.toJson()).toList(),
  if (puts != null) 'puts': puts?.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'deletes', 'patches', 'posts', 'puts'}.contains(key));}
DnsRecordsDnsRequestBatchObjectRequest copyWith({List<DnsRecordsDnsRecordBatchDelete>? Function()? deletes, List<DnsRecordsDnsRecordBatchPatchRequest>? Function()? patches, List<DnsRecordsDnsRecordPostRequest>? Function()? posts, List<DnsRecordsDnsRecordBatchPutRequest>? Function()? puts, }) {return DnsRecordsDnsRequestBatchObjectRequest(
  deletes: deletes != null ? deletes() : this.deletes,
  patches: patches != null ? patches() : this.patches,
  posts: posts != null ? posts() : this.posts,
  puts: puts != null ? puts() : this.puts,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is DnsRecordsDnsRequestBatchObjectRequest &&
          listEquals(deletes, other.deletes) &&
          listEquals(patches, other.patches) &&
          listEquals(posts, other.posts) &&
          listEquals(puts, other.puts);}
@override int get hashCode {return Object.hash(Object.hashAll(deletes ?? const []), Object.hashAll(patches ?? const []), Object.hashAll(posts ?? const []), Object.hashAll(puts ?? const []));}
@override String toString() {return 'DnsRecordsDnsRequestBatchObjectRequest(deletes: $deletes, patches: $patches, posts: $posts, puts: $puts)';}
}
