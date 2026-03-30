// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_connector.dart';final class MconnAdminConnectorListResponse {const MconnAdminConnectorListResponse({this.result});

factory MconnAdminConnectorListResponse.fromJson(Map<String, dynamic> json) { return MconnAdminConnectorListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MconnAdminConnector.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnAdminConnector>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminConnectorListResponse copyWith({List<MconnAdminConnector> Function()? result}) { return MconnAdminConnectorListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminConnectorListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MconnAdminConnectorListResponse(result: $result)'; } 
 }
