// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_connector.dart';@immutable final class MconnAdminConnectorFetchResponse {const MconnAdminConnectorFetchResponse({this.result});

factory MconnAdminConnectorFetchResponse.fromJson(Map<String, dynamic> json) { return MconnAdminConnectorFetchResponse(
  result: json['result'] != null ? MconnAdminConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminConnectorFetchResponse copyWith({MconnAdminConnector Function()? result}) { return MconnAdminConnectorFetchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminConnectorFetchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnAdminConnectorFetchResponse(result: $result)'; } 
 }
