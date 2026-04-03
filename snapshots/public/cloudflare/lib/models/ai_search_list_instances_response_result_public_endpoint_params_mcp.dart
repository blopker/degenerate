// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchListInstancesResponseResultPublicEndpointParamsMcp {const AiSearchListInstancesResponseResultPublicEndpointParamsMcp({this.description = "Finds exactly what you're looking for", this.disabled = false, });

factory AiSearchListInstancesResponseResultPublicEndpointParamsMcp.fromJson(Map<String, dynamic> json) { return AiSearchListInstancesResponseResultPublicEndpointParamsMcp(
  description: json.containsKey('description') ? json['description'] as String : "Finds exactly what you're looking for",
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

final String description;

/// Disable MCP endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'description': description,
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'disabled'}.contains(key)); } 
AiSearchListInstancesResponseResultPublicEndpointParamsMcp copyWith({String Function()? description, bool Function()? disabled, }) { return AiSearchListInstancesResponseResultPublicEndpointParamsMcp(
  description: description != null ? description() : this.description,
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListInstancesResponseResultPublicEndpointParamsMcp &&
          description == other.description &&
          disabled == other.disabled; } 
@override int get hashCode { return Object.hash(description, disabled); } 
@override String toString() { return 'AiSearchListInstancesResponseResultPublicEndpointParamsMcp(description: $description, disabled: $disabled)'; } 
 }
