// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_visibility_pcaps_pcaps_ownership_response.dart';final class MagicVisibilityPcapsPcapsOwnershipCollection {const MagicVisibilityPcapsPcapsOwnershipCollection({this.result});

factory MagicVisibilityPcapsPcapsOwnershipCollection.fromJson(Map<String, dynamic> json) { return MagicVisibilityPcapsPcapsOwnershipCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => MagicVisibilityPcapsPcapsOwnershipResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicVisibilityPcapsPcapsOwnershipResponse>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicVisibilityPcapsPcapsOwnershipCollection copyWith({List<MagicVisibilityPcapsPcapsOwnershipResponse>? Function()? result}) { return MagicVisibilityPcapsPcapsOwnershipCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityPcapsPcapsOwnershipCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MagicVisibilityPcapsPcapsOwnershipCollection(result: $result)'; } 
 }
