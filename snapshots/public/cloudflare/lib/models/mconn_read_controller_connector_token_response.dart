// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MconnReadControllerConnectorTokenResponse {const MconnReadControllerConnectorTokenResponse({this.result});

factory MconnReadControllerConnectorTokenResponse.fromJson(Map<String, dynamic> json) { return MconnReadControllerConnectorTokenResponse(
  result: json['result'] as String?,
); }

final String? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnReadControllerConnectorTokenResponse copyWith({String Function()? result}) { return MconnReadControllerConnectorTokenResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnReadControllerConnectorTokenResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MconnReadControllerConnectorTokenResponse(result: $result)'; } 
 }
