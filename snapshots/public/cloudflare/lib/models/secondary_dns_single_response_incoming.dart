// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_single_response_incoming_result.dart';@immutable final class SecondaryDnsSingleResponseIncoming {const SecondaryDnsSingleResponseIncoming({this.result});

factory SecondaryDnsSingleResponseIncoming.fromJson(Map<String, dynamic> json) { return SecondaryDnsSingleResponseIncoming(
  result: json['result'] != null ? SecondaryDnsSingleResponseIncomingResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsSingleResponseIncomingResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsSingleResponseIncoming copyWith({SecondaryDnsSingleResponseIncomingResult Function()? result}) { return SecondaryDnsSingleResponseIncoming(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSingleResponseIncoming &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsSingleResponseIncoming(result: $result)'; } 
 }
