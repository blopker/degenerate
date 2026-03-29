// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/email_create_sending_subdomain_properties.dart';import '../models/email_identifier.dart';import '../models/email_sending_subdomain_identifier.dart';import '../models/response_common30.dart';/// EmailSendingSubdomainsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EmailSendingSubdomainsApi with ApiExecutor {const EmailSendingSubdomainsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List sending subdomains
///
/// Lists all sending-enabled subdomains for the zone.
///
/// `GET /zones/{zone_id}/email/sending/subdomains`
Future<ApiResult<ResponseCommon30, Never>> emailSendingSubdomainsListSendingSubdomains({required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/sending/subdomains',
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
/// Create a sending subdomain
///
/// Creates a new sending subdomain or re-enables sending on an existing subdomain that had it disabled.
///
/// `POST /zones/{zone_id}/email/sending/subdomains`
Future<ApiResult<ResponseCommon30, Never>> emailSendingSubdomainsCreateSendingSubdomain({required EmailIdentifier zoneId, required EmailCreateSendingSubdomainProperties body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/sending/subdomains',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon30.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a sending subdomain
///
/// Gets information for a specific sending subdomain.
///
/// `GET /zones/{zone_id}/email/sending/subdomains/{subdomain_id}`
Future<ApiResult<ResponseCommon30, Never>> emailSendingSubdomainsGetSendingSubdomain({required EmailSendingSubdomainIdentifier subdomainId, required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/sending/subdomains/${Uri.encodeComponent(subdomainId.toString())}',
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
/// Delete a sending subdomain
///
/// Disables sending on a subdomain and removes its DNS records. If routing is still active on the subdomain, only sending is disabled.
///
/// `DELETE /zones/{zone_id}/email/sending/subdomains/{subdomain_id}`
Future<ApiResult<ResponseCommon30, Never>> emailSendingSubdomainsDeleteSendingSubdomain({required EmailSendingSubdomainIdentifier subdomainId, required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/sending/subdomains/${Uri.encodeComponent(subdomainId.toString())}',
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
/// Get sending subdomain DNS records
///
/// Returns the expected DNS records for a sending subdomain.
///
/// `GET /zones/{zone_id}/email/sending/subdomains/{subdomain_id}/dns`
Future<ApiResult<ResponseCommon30, Never>> emailSendingSubdomainsGetSendingSubdomainDns({required EmailSendingSubdomainIdentifier subdomainId, required EmailIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/email/sending/subdomains/${Uri.encodeComponent(subdomainId.toString())}/dns',
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
 }
