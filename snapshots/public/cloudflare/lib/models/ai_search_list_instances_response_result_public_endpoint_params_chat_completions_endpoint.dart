// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint {const AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint({this.disabled});

factory AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint.fromJson(Map<String, dynamic> json) { return AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: json['disabled'] as bool?,
); }

/// Disable chat completions endpoint for this public endpoint
final bool? disabled;

/// The value with the schema default applied when absent.
bool get disabledOrDefault { return disabled ?? false; } 
Map<String, dynamic> toJson() { return {
  'disabled': ?disabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disabled'}.contains(key)); } 
AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint copyWith({bool? Function()? disabled}) { return AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(
  disabled: disabled != null ? disabled() : this.disabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint &&
          disabled == other.disabled; } 
@override int get hashCode { return disabled.hashCode; } 
@override String toString() { return 'AiSearchListInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint(disabled: $disabled)'; } 
 }
