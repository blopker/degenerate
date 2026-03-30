// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_customer_connector.dart';final class MconnCustomerConnectorUpdateResponse {const MconnCustomerConnectorUpdateResponse({this.result});

factory MconnCustomerConnectorUpdateResponse.fromJson(Map<String, dynamic> json) { return MconnCustomerConnectorUpdateResponse(
  result: json['result'] != null ? MconnCustomerConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnCustomerConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnCustomerConnectorUpdateResponse copyWith({MconnCustomerConnector Function()? result}) { return MconnCustomerConnectorUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCustomerConnectorUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnCustomerConnectorUpdateResponse(result: $result)'; } 
 }
