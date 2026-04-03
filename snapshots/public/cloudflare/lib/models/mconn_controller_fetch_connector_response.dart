// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_controller_connector.dart';@immutable final class MconnControllerFetchConnectorResponse {const MconnControllerFetchConnectorResponse({this.result});

factory MconnControllerFetchConnectorResponse.fromJson(Map<String, dynamic> json) { return MconnControllerFetchConnectorResponse(
  result: json['result'] != null ? MconnControllerConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnControllerConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerFetchConnectorResponse copyWith({MconnControllerConnector Function()? result}) { return MconnControllerFetchConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerFetchConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnControllerFetchConnectorResponse(result: $result)'; } 
 }
