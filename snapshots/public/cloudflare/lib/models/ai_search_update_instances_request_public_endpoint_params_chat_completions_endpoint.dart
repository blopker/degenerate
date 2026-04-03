// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint {const AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint({this.disabled = false});

factory AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint(
  disabled: json.containsKey('disabled') ? json['disabled'] as bool : false,
); }

/// Disable chat completions endpoint for this public endpoint
final bool disabled;

Map<String, dynamic> toJson() { return {
  'disabled': disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint copyWith({bool Function()? disabled}) { return AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesRequestPublicEndpointParamsChatCompletionsEndpoint(disabled: $disabled)'; } 
 }
