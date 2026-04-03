// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_whois.dart';@immutable final class IntelSchemasSingleResponse {const IntelSchemasSingleResponse({this.result});

factory IntelSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return IntelSchemasSingleResponse(
  result: json['result'] != null ? IntelWhois.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IntelWhois? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IntelSchemasSingleResponse copyWith({IntelWhois Function()? result}) { return IntelSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IntelSchemasSingleResponse(result: $result)'; } 
 }
