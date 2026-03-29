// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint {const AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint({this.disabled = false});

factory AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable chat completions endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint copyWith({bool Function()? disabled}) { return AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchCreateInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(disabled: $disabled)'; } 
 }
