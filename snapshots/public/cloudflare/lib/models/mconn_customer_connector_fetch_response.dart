// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_customer_connector.dart';final class MconnCustomerConnectorFetchResponse {const MconnCustomerConnectorFetchResponse({this.result});

factory MconnCustomerConnectorFetchResponse.fromJson(Map<String, dynamic> json) { return MconnCustomerConnectorFetchResponse(
  result: json['result'] != null ? MconnCustomerConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnCustomerConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnCustomerConnectorFetchResponse copyWith({MconnCustomerConnector Function()? result}) { return MconnCustomerConnectorFetchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerConnectorFetchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnCustomerConnectorFetchResponse(result: $result)'; } 
 }
