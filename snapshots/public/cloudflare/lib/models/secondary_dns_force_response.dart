// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// When force_axfr query parameter is set to true, the response is a simple string.
extension type const SecondaryDnsForceResult(String value) {
factory SecondaryDnsForceResult.fromJson(String json) => SecondaryDnsForceResult(json);

String toJson() => value;

}
@immutable final class SecondaryDnsForceResponse {const SecondaryDnsForceResponse({this.result});

factory SecondaryDnsForceResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsForceResponse(
  result: json['result'] != null ? SecondaryDnsForceResult.fromJson(json['result'] as String) : null,
); }

final SecondaryDnsForceResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsForceResponse copyWith({SecondaryDnsForceResult Function()? result}) { return SecondaryDnsForceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsForceResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsForceResponse(result: $result)'; } 
 }
