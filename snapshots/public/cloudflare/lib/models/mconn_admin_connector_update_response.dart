// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_connector.dart';final class MconnAdminConnectorUpdateResponse {const MconnAdminConnectorUpdateResponse({this.result});

factory MconnAdminConnectorUpdateResponse.fromJson(Map<String, dynamic> json) { return MconnAdminConnectorUpdateResponse(
  result: json['result'] != null ? MconnAdminConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminConnectorUpdateResponse copyWith({MconnAdminConnector Function()? result}) { return MconnAdminConnectorUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminConnectorUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminConnectorUpdateResponse(result: $result)'; } 
 }
