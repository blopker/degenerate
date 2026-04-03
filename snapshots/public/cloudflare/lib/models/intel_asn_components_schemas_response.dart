// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_asn.dart';@immutable final class IntelAsnComponentsSchemasResponse {const IntelAsnComponentsSchemasResponse({this.result});

factory IntelAsnComponentsSchemasResponse.fromJson(Map<String, dynamic> json) { return IntelAsnComponentsSchemasResponse(
  result: json['result'] != null ? IntelAsn.fromJson(json['result'] as num) : null,
); }

final IntelAsn? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelAsnComponentsSchemasResponse copyWith({IntelAsn Function()? result}) { return IntelAsnComponentsSchemasResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelAsnComponentsSchemasResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IntelAsnComponentsSchemasResponse(result: $result)'; } 
 }
