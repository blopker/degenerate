// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_identifier.dart';@immutable final class LoadBalancingPreviewResponseResult {const LoadBalancingPreviewResponseResult({this.pools, this.previewId, });

factory LoadBalancingPreviewResponseResult.fromJson(Map<String, dynamic> json) { return LoadBalancingPreviewResponseResult(
  pools: (json['pools'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  previewId: json['preview_id'] != null ? LoadBalancingIdentifier.fromJson(json['preview_id'] as String) : null,
); }

/// Monitored pool IDs mapped to their respective names.
final Map<String,String>? pools;

final LoadBalancingIdentifier? previewId;

Map<String, dynamic> toJson() { return {
  'pools': ?pools,
  if (previewId != null) 'preview_id': previewId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'pools', 'preview_id'}.contains(key)); } 
LoadBalancingPreviewResponseResult copyWith({Map<String, String> Function()? pools, LoadBalancingIdentifier Function()? previewId, }) { return LoadBalancingPreviewResponseResult(
  pools: pools != null ? pools() : this.pools,
  previewId: previewId != null ? previewId() : this.previewId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LoadBalancingPreviewResponseResult &&
          pools == other.pools &&
          previewId == other.previewId; } 
@override int get hashCode { return Object.hash(pools, previewId); } 
@override String toString() { return 'LoadBalancingPreviewResponseResult(pools: $pools, previewId: $previewId)'; } 
 }
