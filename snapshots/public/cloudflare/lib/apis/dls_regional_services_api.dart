// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dls_account_regional_hostnames_account_create_hostname_request.dart';import '../models/dls_account_regional_hostnames_account_list_regions_response_result.dart';import '../models/dls_account_regional_hostnames_account_patch_hostname_request.dart';import '../models/dls_hostname.dart';import '../models/dls_identifier.dart';import '../models/dls_regional_hostname_response.dart';import '../models/response_common21.dart';/// DlsRegionalServicesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DlsRegionalServicesApi with ApiExecutor {const DlsRegionalServicesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Regions
///
/// List all Regional Services regions available for use by this account.
///
/// `GET /accounts/{account_id}/addressing/regional_hostnames/regions`
Future<ApiResult<List<DlsAccountRegionalHostnamesAccountListRegionsResponseResult>?, Never>> dlsAccountRegionalHostnamesAccountListRegions({required DlsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/regional_hostnames/regions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlsAccountRegionalHostnamesAccountListRegionsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List Regional Hostnames
///
/// List all Regional Hostnames within a zone.
///
/// `GET /zones/{zone_id}/addressing/regional_hostnames`
Future<ApiResult<List<DlsRegionalHostnameResponse>?, Never>> dlsAccountRegionalHostnamesAccountListHostnames({required DlsIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/addressing/regional_hostnames',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DlsRegionalHostnameResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Regional Hostname
///
/// Create a new Regional Hostname entry. Cloudflare will only use data centers that are physically located within the chosen region to decrypt and service HTTPS traffic. Learn more about [Regional Services](https://developers.cloudflare.com/data-localization/regional-services/get-started/).
///
/// `POST /zones/{zone_id}/addressing/regional_hostnames`
Future<ApiResult<DlsRegionalHostnameResponse?, Never>> dlsAccountRegionalHostnamesAccountCreateHostname({required DlsIdentifier zoneId, DlsAccountRegionalHostnamesAccountCreateHostnameRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/addressing/regional_hostnames',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlsRegionalHostnameResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Fetch Regional Hostname
///
/// Fetch the configuration for a specific Regional Hostname, within a zone.
///
/// `GET /zones/{zone_id}/addressing/regional_hostnames/{hostname}`
Future<ApiResult<DlsRegionalHostnameResponse?, Never>> dlsAccountRegionalHostnamesAccountFetchHostname({required DlsIdentifier zoneId, required DlsHostname hostname, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/addressing/regional_hostnames/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlsRegionalHostnameResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Regional Hostname
///
/// Update the configuration for a specific Regional Hostname. Only the region_key of a hostname is mutable.
///
/// `PATCH /zones/{zone_id}/addressing/regional_hostnames/{hostname}`
Future<ApiResult<DlsRegionalHostnameResponse?, Never>> dlsAccountRegionalHostnamesAccountPatchHostname({required DlsIdentifier zoneId, required DlsHostname hostname, DlsAccountRegionalHostnamesAccountPatchHostnameRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/addressing/regional_hostnames/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DlsRegionalHostnameResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Regional Hostname
///
/// Delete the region configuration for a specific Regional Hostname.
///
/// `DELETE /zones/{zone_id}/addressing/regional_hostnames/{hostname}`
Future<ApiResult<ResponseCommon21, Never>> dlsAccountRegionalHostnamesAccountDeleteHostname({required DlsIdentifier zoneId, required DlsHostname hostname, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/addressing/regional_hostnames/${Uri.encodeComponent(hostname.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon21.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
