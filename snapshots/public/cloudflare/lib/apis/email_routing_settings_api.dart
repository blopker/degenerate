// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/email_email_setting_dns_request_body.dart';import '../models/email_email_setting_name.dart';import '../models/email_identifier.dart';import '../models/email_routing_settings_disable_email_routing_dns_response.dart';import '../models/email_routing_settings_email_routing_dns_settings_response.dart';import '../models/response_common30.dart';/// EmailRoutingSettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EmailRoutingSettingsApi with ApiExecutor {const EmailRoutingSettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Email Routing settings
///
/// Get information about the settings for your Email Routing zone.
///
/// `GET /zones/{zone_id}/email/routing`
Future<ApiResult<ResponseCommon30, Never>> emailRoutingSettingsGetEmailRoutingSettings({required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon30.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Email Routing - DNS settings
///
/// Show the DNS records needed to configure your Email Routing zone.
///
/// `GET /zones/{zone_id}/email/routing/dns`
Future<ApiResult<EmailRoutingSettingsEmailRoutingDnsSettingsResponse, Never>> emailRoutingSettingsEmailRoutingDnsSettings({required EmailIdentifier zoneId, EmailEmailSettingName? subdomain, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (subdomain != null) queryParameters['subdomain'] = subdomain.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/dns',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => ResponseCommon30.fromJson(v as Map<String, dynamic>), fromB: (v) => ResponseCommon30.fromJson(v as Map<String, dynamic>),);
  },
);
 } 
/// Enable Email Routing
///
/// Enable you Email Routing zone. Add and lock the necessary MX and SPF records.
///
/// `POST /zones/{zone_id}/email/routing/dns`
Future<ApiResult<ResponseCommon30, Never>> emailRoutingSettingsEnableEmailRoutingDns({required EmailIdentifier zoneId, EmailEmailSettingDnsRequestBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/dns',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon30.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Unlock Email Routing
///
/// Unlock MX Records previously locked by Email Routing.
///
/// `PATCH /zones/{zone_id}/email/routing/dns`
Future<ApiResult<ResponseCommon30, Never>> emailRoutingSettingsUnlockEmailRoutingDns({required EmailIdentifier zoneId, EmailEmailSettingDnsRequestBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/dns',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon30.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Disable Email Routing
///
/// Disable your Email Routing zone. Also removes additional MX records previously required for Email Routing to work.
///
/// `DELETE /zones/{zone_id}/email/routing/dns`
Future<ApiResult<EmailRoutingSettingsDisableEmailRoutingDnsResponse, Never>> emailRoutingSettingsDisableEmailRoutingDns({required EmailIdentifier zoneId, EmailEmailSettingDnsRequestBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/routing/dns',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => ResponseCommon30.fromJson(v as Map<String, dynamic>), fromB: (v) => ResponseCommon30.fromJson(v as Map<String, dynamic>),);
  },
);
 } 
 }
