// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_email_routing_dns_query_response_result.dart';final class EmailEmailRoutingDnsQueryResponse {const EmailEmailRoutingDnsQueryResponse({this.result});

factory EmailEmailRoutingDnsQueryResponse.fromJson(Map<String, dynamic> json) { return EmailEmailRoutingDnsQueryResponse(
  result: json['result'] != null ? EmailEmailRoutingDnsQueryResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final EmailEmailRoutingDnsQueryResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
EmailEmailRoutingDnsQueryResponse copyWith({EmailEmailRoutingDnsQueryResponseResult Function()? result}) { return EmailEmailRoutingDnsQueryResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailEmailRoutingDnsQueryResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'EmailEmailRoutingDnsQueryResponse(result: $result)'; } 
 }
