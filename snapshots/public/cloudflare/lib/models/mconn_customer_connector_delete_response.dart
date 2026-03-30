// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_customer_connector.dart';final class MconnCustomerConnectorDeleteResponse {const MconnCustomerConnectorDeleteResponse({this.result});

factory MconnCustomerConnectorDeleteResponse.fromJson(Map<String, dynamic> json) { return MconnCustomerConnectorDeleteResponse(
  result: json['result'] != null ? MconnCustomerConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnCustomerConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnCustomerConnectorDeleteResponse copyWith({MconnCustomerConnector Function()? result}) { return MconnCustomerConnectorDeleteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerConnectorDeleteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnCustomerConnectorDeleteResponse(result: $result)'; } 
 }
