// GENERATED CODE - DO NOT MODIFY BY HAND

import 'config_map_node_config_source.dart';/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
final class NodeConfigSource {const NodeConfigSource({this.configMap});

factory NodeConfigSource.fromJson(Map<String, dynamic> json) { return NodeConfigSource(
  configMap: json['configMap'] != null ? ConfigMapNodeConfigSource.fromJson(json['configMap'] as Map<String, dynamic>) : null,
); }

/// ConfigMap is a reference to a Node's ConfigMap
final ConfigMapNodeConfigSource? configMap;

Map<String, dynamic> toJson() { return {
  if (configMap != null) 'configMap': configMap?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'configMap'}.contains(key)); } 
NodeConfigSource copyWith({ConfigMapNodeConfigSource Function()? configMap}) { return NodeConfigSource(
  configMap: configMap != null ? configMap() : this.configMap,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NodeConfigSource &&
          configMap == other.configMap; } 
@override int get hashCode { return configMap.hashCode; } 
@override String toString() { return 'NodeConfigSource(configMap: $configMap)'; } 
 }
