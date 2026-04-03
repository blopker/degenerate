// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_pcaps_response_full.dart';import 'magic_visibility_pcaps_pcaps_response_simple.dart';import 'magic_visibility_pcaps_pcaps_single_response_result.dart';@immutable final class MagicVisibilityPcapsPcapsSingleResponse {const MagicVisibilityPcapsPcapsSingleResponse({this.result});

factory MagicVisibilityPcapsPcapsSingleResponse.fromJson(Map<String, dynamic> json) { return MagicVisibilityPcapsPcapsSingleResponse(
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => MagicVisibilityPcapsPcapsResponseSimple.fromJson(v as Map<String, dynamic>), fromB: (v) => MagicVisibilityPcapsPcapsResponseFull.fromJson(v as Map<String, dynamic>),) : null,
); }

final MagicVisibilityPcapsPcapsSingleResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicVisibilityPcapsPcapsSingleResponse copyWith({MagicVisibilityPcapsPcapsSingleResponseResult Function()? result}) { return MagicVisibilityPcapsPcapsSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityPcapsPcapsSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicVisibilityPcapsPcapsSingleResponse(result: $result)'; } 
 }
