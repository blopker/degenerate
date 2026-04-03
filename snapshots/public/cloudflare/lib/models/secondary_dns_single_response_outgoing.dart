// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_single_response_outgoing_result.dart';@immutable final class SecondaryDnsSingleResponseOutgoing {const SecondaryDnsSingleResponseOutgoing({this.result});

factory SecondaryDnsSingleResponseOutgoing.fromJson(Map<String, dynamic> json) { return SecondaryDnsSingleResponseOutgoing(
  result: json['result'] != null ? SecondaryDnsSingleResponseOutgoingResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsSingleResponseOutgoingResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsSingleResponseOutgoing copyWith({SecondaryDnsSingleResponseOutgoingResult Function()? result}) { return SecondaryDnsSingleResponseOutgoing(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSingleResponseOutgoing &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsSingleResponseOutgoing(result: $result)'; } 
 }
