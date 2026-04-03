// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_views_for_an_account_delete_internal_dns_view_response_result.dart';@immutable final class DnsViewsForAnAccountDeleteInternalDnsViewResponse {const DnsViewsForAnAccountDeleteInternalDnsViewResponse({this.result});

factory DnsViewsForAnAccountDeleteInternalDnsViewResponse.fromJson(Map<String, dynamic> json) { return DnsViewsForAnAccountDeleteInternalDnsViewResponse(
  result: json['result'] != null ? DnsViewsForAnAccountDeleteInternalDnsViewResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsViewsForAnAccountDeleteInternalDnsViewResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsViewsForAnAccountDeleteInternalDnsViewResponse copyWith({DnsViewsForAnAccountDeleteInternalDnsViewResponseResult Function()? result}) { return DnsViewsForAnAccountDeleteInternalDnsViewResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsViewsForAnAccountDeleteInternalDnsViewResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsViewsForAnAccountDeleteInternalDnsViewResponse(result: $result)'; } 
 }
