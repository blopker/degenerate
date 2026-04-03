// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When force_notify query parameter is set to true, the response is a simple string.
extension type const SecondaryDnsSchemasForceResult(String value) {
factory SecondaryDnsSchemasForceResult.fromJson(String json) => SecondaryDnsSchemasForceResult(json);

String toJson() => value;

}
@immutable final class SecondaryDnsSchemasForceResponse {const SecondaryDnsSchemasForceResponse({this.result});

factory SecondaryDnsSchemasForceResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsSchemasForceResponse(
  result: json['result'] != null ? SecondaryDnsSchemasForceResult.fromJson(json['result'] as String) : null,
); }

final SecondaryDnsSchemasForceResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsSchemasForceResponse copyWith({SecondaryDnsSchemasForceResult Function()? result}) { return SecondaryDnsSchemasForceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsSchemasForceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsSchemasForceResponse(result: $result)'; } 
 }
