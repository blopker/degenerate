// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_custom_nameservers_custom_ns.dart';import '../models/dns_custom_nameservers_custom_ns_input.dart';import '../models/dns_custom_nameservers_identifier.dart';import '../models/dns_custom_nameservers_ns_name.dart';/// AccountLevelCustomNameserversApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountLevelCustomNameserversApi with ApiExecutor {const AccountLevelCustomNameserversApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Account Custom Nameservers
///
/// List an account's custom nameservers.
///
/// `GET /accounts/{account_id}/custom_ns`
Future<ApiResult<List<DnsCustomNameserversCustomNs>?, Never>> accountLevelCustomNameserversListAccountCustomNameservers({required DnsCustomNameserversIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/custom_ns',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DnsCustomNameserversCustomNs.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add Account Custom Nameserver
///
/// `POST /accounts/{account_id}/custom_ns`
Future<ApiResult<DnsCustomNameserversCustomNs?, Never>> accountLevelCustomNameserversAddAccountCustomNameserver({required DnsCustomNameserversIdentifier accountId, required DnsCustomNameserversCustomNsInput body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/custom_ns',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DnsCustomNameserversCustomNs.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Account Custom Nameserver
///
/// `DELETE /accounts/{account_id}/custom_ns/{custom_ns_id}`
Future<ApiResult<List<String>?, Never>> accountLevelCustomNameserversDeleteAccountCustomNameserver({required DnsCustomNameserversNsName customNsId, required DnsCustomNameserversIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/custom_ns/${Uri.encodeComponent(customNsId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => e as String).toList();
  },
);
 } 
 }
