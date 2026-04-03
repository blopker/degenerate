// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsCustomNameserversEmptyResponse {const DnsCustomNameserversEmptyResponse({this.result});

factory DnsCustomNameserversEmptyResponse.fromJson(Map<String, dynamic> json) { return DnsCustomNameserversEmptyResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsCustomNameserversEmptyResponse copyWith({List<String> Function()? result}) { return DnsCustomNameserversEmptyResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsCustomNameserversEmptyResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DnsCustomNameserversEmptyResponse(result: $result)'; } 
 }
