// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp {const AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp({this.description = 'Finds exactly what you\'re looking for', this.disabled = false, });

factory AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp(
  description: json.containsKey('description') ? json['description'] as String : 'Finds exactly what you\'re looking for',
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

final String description;

/// Disable MCP endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'description': description,
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp copyWith({String Function()? description, bool Function()? disabled, }) { return AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp(
  description: description != null ? description() : this.description,
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp &&
          description == other.description &&
          disabled == other.disabled; } 
@override int get hashCode { return Object.hash(description, disabled); } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultPublicEndpointParamsMcp(description: $description, disabled: $disabled)'; } 
 }
