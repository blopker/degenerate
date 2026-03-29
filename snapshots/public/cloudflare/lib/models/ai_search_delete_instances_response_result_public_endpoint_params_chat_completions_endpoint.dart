// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint {const AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint({this.disabled = false});

factory AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable chat completions endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint copyWith({bool Function()? disabled}) { return AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchDeleteInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(disabled: $disabled)'; } 
 }
