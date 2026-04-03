// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_config.dart';@immutable final class ListHyperdriveResponse {const ListHyperdriveResponse({this.result});

factory ListHyperdriveResponse.fromJson(Map<String, dynamic> json) { return ListHyperdriveResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => HyperdriveHyperdriveConfig.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<HyperdriveHyperdriveConfig>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ListHyperdriveResponse copyWith({List<HyperdriveHyperdriveConfig> Function()? result}) { return ListHyperdriveResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListHyperdriveResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ListHyperdriveResponse(result: $result)'; } 
 }
