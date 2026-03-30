// GENERATED CODE - DO NOT MODIFY BY HAND

import 'iam_sso_connector.dart';final class IamSsoConnectorResponse {const IamSsoConnectorResponse({this.result});

factory IamSsoConnectorResponse.fromJson(Map<String, dynamic> json) { return IamSsoConnectorResponse(
  result: json['result'] != null ? IamSsoConnector.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final IamSsoConnector? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSsoConnectorResponse copyWith({IamSsoConnector Function()? result}) { return IamSsoConnectorResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSsoConnectorResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IamSsoConnectorResponse(result: $result)'; } 
 }
