// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/bundle_custom_scan.dart';import '../models/bundle_identifier.dart';import '../models/bundle_schemas_status.dart';import '../models/response_common75_result.dart';import '../models/response_common_failure78.dart';import '../models/waf_content_scanning_add_custom_scan_expressions_request.dart';import '../models/waf_content_scanning_add_custom_scan_expressions_response4_xx.dart';import '../models/waf_content_scanning_delete_custom_scan_expressions_response4_xx.dart';import '../models/waf_content_scanning_list_custom_scan_expressions_response4_xx.dart';import '../models/waf_content_scanning_update_settings_request.dart';/// ContentScanningApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ContentScanningApi with ApiExecutor {const ContentScanningApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Disable Content Scanning
///
/// Disable Content Scanning.
///
/// `POST /zones/{zone_id}/content-upload-scan/disable`
Future<ApiResult<ResponseCommon75Result?, ResponseCommonFailure78>> wafContentScanningDisable({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/content-upload-scan/disable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ResponseCommon75Result.fromJson(json['result']) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure78.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Enable Content Scanning
///
/// Enable Content Scanning.
///
/// `POST /zones/{zone_id}/content-upload-scan/enable`
Future<ApiResult<ResponseCommon75Result?, ResponseCommonFailure78>> wafContentScanningEnable({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/content-upload-scan/enable',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ResponseCommon75Result.fromJson(json['result']) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure78.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Existing Custom Scan Expressions
///
/// Get a list of existing custom scan expressions for Content Scanning.
///
/// `GET /zones/{zone_id}/content-upload-scan/payloads`
Future<ApiResult<List<BundleCustomScan>, WafContentScanningListCustomScanExpressionsResponse4Xx>> wafContentScanningListCustomScanExpressions({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/content-upload-scan/payloads',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => BundleCustomScan.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return WafContentScanningListCustomScanExpressionsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Add Custom Scan Expressions
///
/// Add custom scan expressions for Content Scanning.
///
/// `POST /zones/{zone_id}/content-upload-scan/payloads`
Future<ApiResult<List<BundleCustomScan>, WafContentScanningAddCustomScanExpressionsResponse4Xx>> wafContentScanningAddCustomScanExpressions({required BundleIdentifier zoneId, required List<WafContentScanningAddCustomScanExpressionsRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/content-upload-scan/payloads',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => BundleCustomScan.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return WafContentScanningAddCustomScanExpressionsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a Custom Scan Expression
///
/// Delete a Content Scan Custom Expression.
///
/// `DELETE /zones/{zone_id}/content-upload-scan/payloads/{expression_id}`
Future<ApiResult<List<BundleCustomScan>, WafContentScanningDeleteCustomScanExpressionsResponse4Xx>> wafContentScanningDeleteCustomScanExpressions({required BundleIdentifier zoneId, required BundleIdentifier expressionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/content-upload-scan/payloads/${Uri.encodeComponent(expressionId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => BundleCustomScan.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return WafContentScanningDeleteCustomScanExpressionsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Content Scanning Status
///
/// Retrieve the current status of Content Scanning.
///
/// `GET /zones/{zone_id}/content-upload-scan/settings`
Future<ApiResult<BundleSchemasStatus, ResponseCommonFailure78>> wafContentScanningGetStatus({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/content-upload-scan/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return BundleSchemasStatus.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure78.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Content Scanning Status
///
/// Update the Content Scanning status.
///
/// `PUT /zones/{zone_id}/content-upload-scan/settings`
Future<ApiResult<BundleSchemasStatus, ResponseCommonFailure78>> wafContentScanningUpdateSettings({required BundleIdentifier zoneId, required WafContentScanningUpdateSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/content-upload-scan/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return BundleSchemasStatus.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure78.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
