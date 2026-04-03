// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The zone transfer status of a primary zone.
extension type const SecondaryDnsEnableTransferResult(String value) {
factory SecondaryDnsEnableTransferResult.fromJson(String json) => SecondaryDnsEnableTransferResult(json);

String toJson() => value;

}
@immutable final class SecondaryDnsEnableTransferResponse {const SecondaryDnsEnableTransferResponse({this.result});

factory SecondaryDnsEnableTransferResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsEnableTransferResponse(
  result: json['result'] != null ? SecondaryDnsEnableTransferResult.fromJson(json['result'] as String) : null,
); }

final SecondaryDnsEnableTransferResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsEnableTransferResponse copyWith({SecondaryDnsEnableTransferResult Function()? result}) { return SecondaryDnsEnableTransferResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsEnableTransferResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsEnableTransferResponse(result: $result)'; } 
 }
