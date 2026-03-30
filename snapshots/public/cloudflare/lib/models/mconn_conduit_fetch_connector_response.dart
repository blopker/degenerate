// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mconn_conduit_connector.dart';final class MconnConduitFetchConnectorResponse {const MconnConduitFetchConnectorResponse({this.result});

factory MconnConduitFetchConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnConduitFetchConnectorResponse(
  result: json['result'] != null ? MconnConduitConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnConduitConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnConduitFetchConnectorResponse copyWith({MconnConduitConnector Function()? result}) { return MconnConduitFetchConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnConduitFetchConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnConduitFetchConnectorResponse(result: $result)'; } 
 }
