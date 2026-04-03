// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_sso_connector.dart';@immutable final class IamSsoConnectorCollectionResponse {const IamSsoConnectorCollectionResponse({this.result});

factory IamSsoConnectorCollectionResponse.fromJson(Map<String, dynamic> json) { return IamSsoConnectorCollectionResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => IamSsoConnector.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamSsoConnector>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
IamSsoConnectorCollectionResponse copyWith({List<IamSsoConnector> Function()? result}) { return IamSsoConnectorCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamSsoConnectorCollectionResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'IamSsoConnectorCollectionResponse(result: $result)'; } 
 }
