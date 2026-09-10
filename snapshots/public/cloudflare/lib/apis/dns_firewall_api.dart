// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_firewall_create_dns_firewall_cluster_response4xx.dart';import '../models/dns_firewall_delete_dns_firewall_cluster_response4xx.dart';import '../models/dns_firewall_delete_dns_firewall_cluster_response_result.dart';import '../models/dns_firewall_dns_firewall_cluster.dart';import '../models/dns_firewall_dns_firewall_cluster_details_response4xx.dart';import '../models/dns_firewall_dns_firewall_cluster_response.dart';import '../models/dns_firewall_dns_firewall_reverse_dns.dart';import '../models/dns_firewall_identifier.dart';import '../models/dns_firewall_list_dns_firewall_clusters_response4xx.dart';import '../models/dns_firewall_show_dns_firewall_cluster_reverse_dns_response4xx.dart';import '../models/dns_firewall_update_dns_firewall_cluster_response4xx.dart';import '../models/dns_firewall_update_dns_firewall_cluster_reverse_dns_response4xx.dart';/// DnsFirewallApi operations.
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
Future<ApiResult<List<DnsFirewallDnsFirewallClusterResponse>?, DnsFirewallListDnsFirewallClustersResponse4xx>> dnsFirewallListDnsFirewallClusters({required DnsFirewallIdentifier accountId, double? page, double? perPage, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => DnsFirewallDnsFirewallClusterResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsFirewallListDnsFirewallClustersResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Create DNS Firewall Cluster
///
/// Create a DNS Firewall cluster
///
/// `POST /accounts/{account_id}/dns_firewall`
Future<ApiResult<DnsFirewallDnsFirewallClusterResponse?, DnsFirewallCreateDnsFirewallClusterResponse4xx>> dnsFirewallCreateDnsFirewallCluster({required DnsFirewallIdentifier accountId, required DnsFirewallDnsFirewallCluster body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsFirewallDnsFirewallClusterResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsFirewallCreateDnsFirewallClusterResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// DNS Firewall Cluster Details
///
/// Show a single DNS Firewall cluster for an account
///
/// `GET /accounts/{account_id}/dns_firewall/{dns_firewall_id}`
Future<ApiResult<DnsFirewallDnsFirewallClusterResponse?, DnsFirewallDnsFirewallClusterDetailsResponse4xx>> dnsFirewallClusterDetails({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsFirewallDnsFirewallClusterResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsFirewallDnsFirewallClusterDetailsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update DNS Firewall Cluster
///
/// Modify the configuration of a DNS Firewall cluster
///
/// `PATCH /accounts/{account_id}/dns_firewall/{dns_firewall_id}`
Future<ApiResult<DnsFirewallDnsFirewallClusterResponse?, DnsFirewallUpdateDnsFirewallClusterResponse4xx>> dnsFirewallUpdateDnsFirewallCluster({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, required DnsFirewallDnsFirewallCluster body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsFirewallDnsFirewallClusterResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsFirewallUpdateDnsFirewallClusterResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete DNS Firewall Cluster
///
/// Delete a DNS Firewall cluster
///
/// `DELETE /accounts/{account_id}/dns_firewall/{dns_firewall_id}`
Future<ApiResult<DnsFirewallDeleteDnsFirewallClusterResponseResult?, DnsFirewallDeleteDnsFirewallClusterResponse4xx>> dnsFirewallDeleteDnsFirewallCluster({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsFirewallDeleteDnsFirewallClusterResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsFirewallDeleteDnsFirewallClusterResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Show DNS Firewall Cluster Reverse DNS
///
/// Show reverse DNS configuration (PTR records) for a DNS Firewall cluster
///
/// `GET /accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`
Future<ApiResult<DnsFirewallDnsFirewallReverseDns?, DnsFirewallShowDnsFirewallClusterReverseDnsResponse4xx>> dnsFirewallShowDnsFirewallClusterReverseDns({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}/reverse_dns',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsFirewallDnsFirewallReverseDns.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsFirewallShowDnsFirewallClusterReverseDnsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update DNS Firewall Cluster Reverse DNS
///
/// Update reverse DNS configuration (PTR records) for a DNS Firewall cluster
///
/// `PATCH /accounts/{account_id}/dns_firewall/{dns_firewall_id}/reverse_dns`
Future<ApiResult<DnsFirewallDnsFirewallReverseDns?, DnsFirewallUpdateDnsFirewallClusterReverseDnsResponse4xx>> dnsFirewallUpdateDnsFirewallClusterReverseDns({required DnsFirewallIdentifier dnsFirewallId, required DnsFirewallIdentifier accountId, required DnsFirewallDnsFirewallReverseDns body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_firewall/${Uri.encodeComponent(dnsFirewallId.toString())}/reverse_dns',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? DnsFirewallDnsFirewallReverseDns.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsFirewallUpdateDnsFirewallClusterReverseDnsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
