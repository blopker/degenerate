// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_settings_direction.dart';import '../models/dns_settings_dns_view.dart';import '../models/dns_settings_identifier.dart';import '../models/dns_settings_match.dart';import '../models/dns_settings_order.dart';import '../models/dns_settings_page.dart';import '../models/dns_settings_per_page.dart';import '../models/dns_views_for_an_account_delete_internal_dns_view_response.dart';import '../models/response_common26.dart';/// DnsInternalViewsForAnAccountApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DnsInternalViewsForAnAccountApi with ApiExecutor {const DnsInternalViewsForAnAccountApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Internal DNS Views
///
/// List DNS Internal Views for an Account
///
/// `GET /accounts/{account_id}/dns_settings/views`
Future<ApiResult<ResponseCommon26, Never>> dnsViewsForAnAccountListInternalDnsViews({required DnsSettingsIdentifier accountId, String? name, String? nameExact, String? nameContains, String? nameStartswith, String? nameEndswith, String? zoneId, String? zoneName, DnsSettingsMatch? match, DnsSettingsPage? page, DnsSettingsPerPage? perPage, DnsSettingsOrder? order, DnsSettingsDirection? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name;
if (nameExact != null) queryParameters['name.exact'] = nameExact;
if (nameContains != null) queryParameters['name.contains'] = nameContains;
if (nameStartswith != null) queryParameters['name.startswith'] = nameStartswith;
if (nameEndswith != null) queryParameters['name.endswith'] = nameEndswith;
if (zoneId != null) queryParameters['zone_id'] = zoneId;
if (zoneName != null) queryParameters['zone_name'] = zoneName;
if (match != null) queryParameters['match'] = match.toJson();
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (order != null) queryParameters['order'] = order.toJson();
if (direction != null) queryParameters['direction'] = direction.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings/views',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon26.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Internal DNS View
///
/// Create Internal DNS View for an account
///
/// `POST /accounts/{account_id}/dns_settings/views`
Future<ApiResult<ResponseCommon26, Never>> dnsViewsForAnAccountCreateInternalDnsViews({required DnsSettingsIdentifier accountId, required DnsSettingsDnsView body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings/views',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon26.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// DNS Internal View Details
///
/// Get DNS Internal View
///
/// `GET /accounts/{account_id}/dns_settings/views/{view_id}`
Future<ApiResult<ResponseCommon26, Never>> dnsViewsForAnAccountGetInternalDnsView({required DnsSettingsIdentifier accountId, required DnsSettingsIdentifier viewId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings/views/${Uri.encodeComponent(viewId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon26.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Internal DNS View
///
/// Update an existing Internal DNS View
///
/// `PATCH /accounts/{account_id}/dns_settings/views/{view_id}`
Future<ApiResult<ResponseCommon26, Never>> dnsViewsForAnAccountUpdateInternalDnsView({required DnsSettingsIdentifier accountId, required DnsSettingsIdentifier viewId, required DnsSettingsDnsView body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings/views/${Uri.encodeComponent(viewId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon26.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Internal DNS View
///
/// Delete an existing Internal DNS View
///
/// `DELETE /accounts/{account_id}/dns_settings/views/{view_id}`
Future<ApiResult<DnsViewsForAnAccountDeleteInternalDnsViewResponse, Never>> dnsViewsForAnAccountDeleteInternalDnsView({required DnsSettingsIdentifier accountId, required DnsSettingsIdentifier viewId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings/views/${Uri.encodeComponent(viewId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnsViewsForAnAccountDeleteInternalDnsViewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
