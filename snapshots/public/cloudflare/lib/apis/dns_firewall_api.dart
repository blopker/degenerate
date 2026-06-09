// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_firewall_delete_dns_firewall_cluster_response4xx.dart';import '../models/dns_firewall_delete_dns_firewall_cluster_response_result.dart';import '../models/dns_firewall_dns_firewall_cluster.dart';import '../models/dns_firewall_dns_firewall_cluster_response.dart';import '../models/dns_firewall_dns_firewall_response_collection.dart';import '../models/dns_firewall_dns_firewall_reverse_dns.dart';import '../models/dns_firewall_dns_firewall_reverse_dns_response2.dart';import '../models/dns_firewall_dns_firewall_single_response.dart';import '../models/dns_firewall_identifier.dart';/// DnsFirewallApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DnsFirewallApi with ApiExecutor {const DnsFirewallApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List DNS Firewall Clusters
///
/// List DNS Firewall clusters for an account
///
/// `GET /accounts/{account_id}/dns_firewall`
Future<ApiResult<List<DnsFirewallDnsFirewallClusterResponse>?, DnsFirewallDnsFirewallResponseCollection>> dnsFirewallListDnsFirewallClusters({required DnsFirewallIdentifier accountId, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DnsFirewallDnsFirewallClusterResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return DnsFirewallDnsFirewallResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create DNS Firewall Cluster
///
/// Create a DNS Firewall cluster
///
/// `POST /accounts/{account_id}/dns_firewall`
Future<ApiResult<DnsFirewallDnsFirewallClusterResponse?, DnsFirewallDnsFirewallSingleResponse>> dnsFirewallCreateDnsFirewallCluster({required DnsFirewallIdentifier accountId, required DnsFirewallDnsFirewallCluster body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DnsFirewallDnsFirewallClusterResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return DnsFirewallDnsFirewallSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// DNS Firewall Cluster Details
///
/// Show a single DNS Firewall cluster for an account
///
/// `GET /accounts/{account_id}/dns_firewall/{dns_firewall_id}`
Future<ApiResult<DnsFirewallDnsFirewallClusterResponse?, DnsFirewallDnsFirewallSingleResponse>> dnsFirewallClusterDetails({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DnsFirewallDnsFirewallClusterResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return DnsFirewallDnsFirewallSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update DNS Firewall Cluster
///
/// Modify the configuration of a DNS Firewall cluster
///
/// `PATCH /accounts/{account_id}/dns_firewall/{dns_firewall_id}`
Future<ApiResult<DnsFirewallDnsFirewallClusterResponse?, DnsFirewallDnsFirewallSingleResponse>> dnsFirewallUpdateDnsFirewallCluster({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, required DnsFirewallDnsFirewallCluster body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DnsFirewallDnsFirewallClusterResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return DnsFirewallDnsFirewallSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete DNS Firewall Cluster
///
/// Delete a DNS Firewall cluster
///
/// `DELETE /accounts/{account_id}/dns_firewall/{dns_firewall_id}`
Future<ApiResult<DnsFirewallDeleteDnsFirewallClusterResponseResult?, DnsFirewallDeleteDnsFirewallClusterResponse4xx>> dnsFirewallDeleteDnsFirewallCluster({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DnsFirewallDeleteDnsFirewallClusterResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return DnsFirewallDeleteDnsFirewallClusterResponse4xx.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Show DNS Firewall Cluster Reverse DNS
///
/// Show reverse DNS configuration (PTR records) for a DNS Firewall cluster
///
/// `GET /accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`
Future<ApiResult<DnsFirewallDnsFirewallReverseDns?, DnsFirewallDnsFirewallReverseDnsResponse2>> dnsFirewallShowDnsFirewallClusterReverseDns({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}/reverse_dns',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DnsFirewallDnsFirewallReverseDns.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return DnsFirewallDnsFirewallReverseDnsResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update DNS Firewall Cluster Reverse DNS
///
/// Update reverse DNS configuration (PTR records) for a DNS Firewall cluster
///
/// `PATCH /accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`
Future<ApiResult<DnsFirewallDnsFirewallReverseDns?, DnsFirewallDnsFirewallReverseDnsResponse2>> dnsFirewallUpdateDnsFirewallClusterReverseDns({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, required DnsFirewallDnsFirewallReverseDns body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}/reverse_dns',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DnsFirewallDnsFirewallReverseDns.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return DnsFirewallDnsFirewallReverseDnsResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
