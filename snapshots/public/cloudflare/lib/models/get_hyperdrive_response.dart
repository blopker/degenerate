// GENERATED CODE - DO NOT MODIFY BY HAND

import 'hyperdrive_hyperdrive_config.dart';final class GetHyperdriveResponse {const GetHyperdriveResponse({this.result});

factory GetHyperdriveResponse.fromJson(Map<String, dynamic> json) { return GetHyperdriveResponse(
  result: json['result'] != null ? HyperdriveHyperdriveConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final HyperdriveHyperdriveConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
GetHyperdriveResponse copyWith({HyperdriveHyperdriveConfig Function()? result}) { return GetHyperdriveResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetHyperdriveResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'GetHyperdriveResponse(result: $result)'; } 
 }
