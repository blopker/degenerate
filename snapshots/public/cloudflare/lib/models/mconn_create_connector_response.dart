// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_connector.dart';@immutable final class MconnCreateConnectorResponse {const MconnCreateConnectorResponse({this.result});

factory MconnCreateConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnCreateConnectorResponse(
  result: json['result'] != null ? MconnAdminConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnAdminConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnCreateConnectorResponse copyWith({MconnAdminConnector Function()? result}) { return MconnCreateConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnCreateConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnCreateConnectorResponse(result: $result)'; } 
 }
