// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_tsig.dart';@immutable final class SecondaryDnsSingleResponse {const SecondaryDnsSingleResponse({this.result});

factory SecondaryDnsSingleResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsSingleResponse(
  result: json['result'] != null ? SecondaryDnsTsig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final SecondaryDnsTsig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsSingleResponse copyWith({SecondaryDnsTsig Function()? result}) { return SecondaryDnsSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsSingleResponse(result: $result)'; } 
 }
