// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint {const AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint({this.disabled = false});

factory AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable chat completions endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint copyWith({bool Function()? disabled}) { return AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(disabled: $disabled)'; } 
 }
