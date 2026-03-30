// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_admin_connector.dart';final class MconnAdminConnectorCreateResponse {const MconnAdminConnectorCreateResponse({this.result});

factory MconnAdminConnectorCreateResponse.fromJson(Map<String, dynamic> json) { return MconnAdminConnectorCreateResponse(
  result: json['result'] != null ? MconnAdminConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminConnectorCreateResponse copyWith({MconnAdminConnector Function()? result}) { return MconnAdminConnectorCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminConnectorCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminConnectorCreateResponse(result: $result)'; } 
 }
