// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_custom_nameservers_custom_ns.dart';@immutable final class DnsCustomNameserversAcnsResponseSingle {const DnsCustomNameserversAcnsResponseSingle({this.result});

factory DnsCustomNameserversAcnsResponseSingle.fromJson(Map<String, dynamic> json) { return DnsCustomNameserversAcnsResponseSingle(
  result: json['result'] != null ? DnsCustomNameserversCustomNs.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsCustomNameserversCustomNs? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsCustomNameserversAcnsResponseSingle copyWith({DnsCustomNameserversCustomNs Function()? result}) { return DnsCustomNameserversAcnsResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsCustomNameserversAcnsResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsCustomNameserversAcnsResponseSingle(result: $result)'; } 
 }
