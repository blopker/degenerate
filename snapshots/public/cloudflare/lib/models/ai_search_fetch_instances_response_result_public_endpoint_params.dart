// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_instances_response_result_public_endpoint_params_chat_completions_endpoint.dart';import 'ai_search_fetch_instances_response_result_public_endpoint_params_mcp.dart';import 'ai_search_fetch_instances_response_result_public_endpoint_params_rate_limit.dart';import 'ai_search_fetch_instances_response_result_public_endpoint_params_search_endpoint.dart';@immutable final class AiSearchFetchInstancesResponseResultPublicEndpointParams {const AiSearchFetchInstancesResponseResultPublicEndpointParams({this.authorizedHosts, this.chatCompletionsEndpoint, this.enabled = false, this.mcp, this.rateLimit, this.searchEndpoint, });

factory AiSearchFetchInstancesResponseResultPublicEndpointParams.fromJson(Map<String, dynamic> json) { return AiSearchFetchInstancesResponseResultPublicEndpointParams(
  authorizedHosts: (json['authorized_hosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  chatCompletionsEndpoint: json['chat_completions_endpoint'] != null ? AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint.fromJson(json['chat_completions_endpoint'] as Map<String, dynamic>) : null,
  enabled: json.containsKey('enabled') ? json['enabled'] as bool : false,
  mcp: json['mcp'] != null ? AiSearchFetchInstancesResponseResultPublicEndpointParamsMcp.fromJson(json['mcp'] as Map<String, dynamic>) : null,
  rateLimit: json['rate_limit'] != null ? AiSearchFetchInstancesResponseResultPublicEndpointParamsRateLimit.fromJson(json['rate_limit'] as Map<String, dynamic>) : null,
  searchEndpoint: json['search_endpoint'] != null ? AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint.fromJson(json['search_endpoint'] as Map<String, dynamic>) : null,
); }

final List<String>? authorizedHosts;

final AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint? chatCompletionsEndpoint;

final bool enabled;

final AiSearchFetchInstancesResponseResultPublicEndpointParamsMcp? mcp;

final AiSearchFetchInstancesResponseResultPublicEndpointParamsRateLimit? rateLimit;

final AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint? searchEndpoint;

Map<String, dynamic> toJson() { return {
  'authorized_hosts': ?authorizedHosts,
  if (chatCompletionsEndpoint != null) 'chat_completions_endpoint': chatCompletionsEndpoint?.toJson(),
  'enabled': enabled,
  if (mcp != null) 'mcp': mcp?.toJson(),
  if (rateLimit != null) 'rate_limit': rateLimit?.toJson(),
  if (searchEndpoint != null) 'search_endpoint': searchEndpoint?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'authorized_hosts', 'chat_completions_endpoint', 'enabled', 'mcp', 'rate_limit', 'search_endpoint'}.contains(key)); } 
AiSearchFetchInstancesResponseResultPublicEndpointParams copyWith({List<String> Function()? authorizedHosts, AiSearchFetchInstancesResponseResultPublicEndpointParamsChatCompletionsEndpoint Function()? chatCompletionsEndpoint, bool Function()? enabled, AiSearchFetchInstancesResponseResultPublicEndpointParamsMcp Function()? mcp, AiSearchFetchInstancesResponseResultPublicEndpointParamsRateLimit Function()? rateLimit, AiSearchFetchInstancesResponseResultPublicEndpointParamsSearchEndpoint Function()? searchEndpoint, }) { return AiSearchFetchInstancesResponseResultPublicEndpointParams(
  authorizedHosts: authorizedHosts != null ? authorizedHosts() : this.authorizedHosts,
  chatCompletionsEndpoint: chatCompletionsEndpoint != null ? chatCompletionsEndpoint() : this.chatCompletionsEndpoint,
  enabled: enabled != null ? enabled() : this.enabled,
  mcp: mcp != null ? mcp() : this.mcp,
  rateLimit: rateLimit != null ? rateLimit() : this.rateLimit,
  searchEndpoint: searchEndpoint != null ? searchEndpoint() : this.searchEndpoint,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchFetchInstancesResponseResultPublicEndpointParams &&
          listEquals(authorizedHosts, other.authorizedHosts) &&
          chatCompletionsEndpoint == other.chatCompletionsEndpoint &&
          enabled == other.enabled &&
          mcp == other.mcp &&
          rateLimit == other.rateLimit &&
          searchEndpoint == other.searchEndpoint; } 
@override int get hashCode { return Object.hash(Object.hashAll(authorizedHosts ?? const []), chatCompletionsEndpoint, enabled, mcp, rateLimit, searchEndpoint); } 
@override String toString() { return 'AiSearchFetchInstancesResponseResultPublicEndpointParams(authorizedHosts: $authorizedHosts, chatCompletionsEndpoint: $chatCompletionsEndpoint, enabled: $enabled, mcp: $mcp, rateLimit: $rateLimit, searchEndpoint: $searchEndpoint)'; } 
 }
