// GENERATED CODE - DO NOT MODIFY BY HAND

/// The zone transfer status of a primary zone.
extension type const SecondaryDnsDisableTransferResult(String value) {
factory SecondaryDnsDisableTransferResult.fromJson(String json) => SecondaryDnsDisableTransferResult(json);

String toJson() => value;

}
final class SecondaryDnsDisableTransferResponse {const SecondaryDnsDisableTransferResponse({this.result});

factory SecondaryDnsDisableTransferResponse.fromJson(Map<String, dynamic> json) { return SecondaryDnsDisableTransferResponse(
  result: json['result'] != null ? SecondaryDnsDisableTransferResult.fromJson(json['result'] as String) : null,
); }

final SecondaryDnsDisableTransferResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
SecondaryDnsDisableTransferResponse copyWith({SecondaryDnsDisableTransferResult Function()? result}) { return SecondaryDnsDisableTransferResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsDisableTransferResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'SecondaryDnsDisableTransferResponse(result: $result)'; } 
 }
