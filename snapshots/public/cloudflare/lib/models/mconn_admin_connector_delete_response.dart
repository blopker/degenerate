// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_connector.dart';@immutable final class MconnAdminConnectorDeleteResponse {const MconnAdminConnectorDeleteResponse({this.result});

factory MconnAdminConnectorDeleteResponse.fromJson(Map<String, dynamic> json) { return MconnAdminConnectorDeleteResponse(
  result: json['result'] != null ? MconnAdminConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminConnectorDeleteResponse copyWith({MconnAdminConnector Function()? result}) { return MconnAdminConnectorDeleteResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminConnectorDeleteResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminConnectorDeleteResponse(result: $result)'; } 
 }
