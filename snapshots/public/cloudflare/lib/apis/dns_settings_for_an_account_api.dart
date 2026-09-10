// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dns_settings_account_settings.dart';import '../models/dns_settings_account_settings_patch.dart';import '../models/dns_settings_for_an_account_list_dns_settings_response4xx.dart';import '../models/dns_settings_for_an_account_update_dns_settings_response4xx.dart';import '../models/dns_settings_identifier.dart';/// DnsSettingsForAnAccountApi operations.
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
Future<ApiResult<DnsSettingsAccountSettings, DnsSettingsForAnAccountListDnsSettingsResponse4xx>> dnsSettingsForAnAccountListDnsSettings({required DnsSettingsIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return DnsSettingsAccountSettings.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsSettingsForAnAccountListDnsSettingsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update DNS Settings
///
/// Update DNS settings for an account
///
/// `PATCH /accounts/{account_id}/dns_settings`
Future<ApiResult<DnsSettingsAccountSettings, DnsSettingsForAnAccountUpdateDnsSettingsResponse4xx>> dnsSettingsForAnAccountUpdateDnsSettings({required DnsSettingsIdentifier accountId, required DnsSettingsAccountSettingsPatch body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dns_settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return DnsSettingsAccountSettings.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DnsSettingsForAnAccountUpdateDnsSettingsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
