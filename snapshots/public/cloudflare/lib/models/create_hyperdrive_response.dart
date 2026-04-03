// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_config.dart';@immutable final class CreateHyperdriveResponse {const CreateHyperdriveResponse({this.result});

factory CreateHyperdriveResponse.fromJson(Map<String, dynamic> json) { return CreateHyperdriveResponse(
  result: json['result'] != null ? HyperdriveHyperdriveConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final HyperdriveHyperdriveConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CreateHyperdriveResponse copyWith({HyperdriveHyperdriveConfig Function()? result}) { return CreateHyperdriveResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateHyperdriveResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CreateHyperdriveResponse(result: $result)'; } 
 }
