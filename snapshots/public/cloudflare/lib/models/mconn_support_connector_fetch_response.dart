// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_support_connector.dart';@immutable final class MconnSupportConnectorFetchResponse {const MconnSupportConnectorFetchResponse({this.result});

factory MconnSupportConnectorFetchResponse.fromJson(Map<String, dynamic> json) { return MconnSupportConnectorFetchResponse(
  result: json['result'] != null ? MconnSupportConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MconnSupportConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnSupportConnectorFetchResponse copyWith({MconnSupportConnector Function()? result}) { return MconnSupportConnectorFetchResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSupportConnectorFetchResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnSupportConnectorFetchResponse(result: $result)'; } 
 }
