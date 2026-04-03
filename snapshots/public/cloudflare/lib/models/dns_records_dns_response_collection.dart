// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsRecordsDnsResponseCollection {const DnsRecordsDnsResponseCollection({this.result});

factory DnsRecordsDnsResponseCollection.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final List<Map<String,dynamic>>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsRecordsDnsResponseCollection copyWith({List<Map<String, dynamic>> Function()? result}) { return DnsRecordsDnsResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DnsRecordsDnsResponseCollection(result: $result)'; } 
 }
