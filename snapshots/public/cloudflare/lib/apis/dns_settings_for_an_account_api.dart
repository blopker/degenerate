// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_settings_account_settings_patch.dart';import '../models/dns_settings_dns_response_single.dart';import '../models/dns_settings_identifier.dart';/// DnsSettingsForAnAccountApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DnsSettingsForAnAccountApi with ApiExecutor {const DnsSettingsForAnAccountApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Show DNS Settings
///
/// Show DNS settings for an account
///
/// `GET /accounts/{account_id}/dns_settings`
Future<ApiResult<DnsSettingsDnsResponseSingle, Never>> dnsSettingsForAnAccountListDnsSettings({required DnsSettingsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnsSettingsDnsResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update DNS Settings
///
/// Update DNS settings for an account
///
/// `PATCH /accounts/{account_id}/dns_settings`
Future<ApiResult<DnsSettingsDnsResponseSingle, Never>> dnsSettingsForAnAccountUpdateDnsSettings({required DnsSettingsIdentifier accountId, required DnsSettingsAccountSettingsPatch body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DnsSettingsDnsResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
