// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/bundle_custom_scan.dart';import '../models/bundle_identifier.dart';import '../models/bundle_schemas_status.dart';import '../models/response_common75_result.dart';import '../models/waf_content_scanning_add_custom_scan_expressions_request.dart';import '../models/waf_content_scanning_update_settings_request.dart';/// ContentScanningApi operations.
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
Future<ApiResult<ResponseCommon75Result, Never>> wafContentScanningDisable({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Enable Content Scanning
///
/// Enable Content Scanning.
///
/// `POST /zones/{zone_id}/content-upload-scan/enable`
Future<ApiResult<ResponseCommon75Result, Never>> wafContentScanningEnable({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// List Existing Custom Scan Expressions
///
/// Get a list of existing custom scan expressions for Content Scanning.
///
/// `GET /zones/{zone_id}/content-upload-scan/payloads`
Future<ApiResult<List<BundleCustomScan>?, Never>> wafContentScanningListCustomScanExpressions({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return (json['result'] as List<dynamic>?)?.map((e) => BundleCustomScan.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add Custom Scan Expressions
///
/// Add custom scan expressions for Content Scanning.
///
/// `POST /zones/{zone_id}/content-upload-scan/payloads`
Future<ApiResult<List<BundleCustomScan>?, Never>> wafContentScanningAddCustomScanExpressions({required BundleIdentifier zoneId, required List<WafContentScanningAddCustomScanExpressionsRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return (json['result'] as List<dynamic>?)?.map((e) => BundleCustomScan.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Delete a Custom Scan Expression
///
/// Delete a Content Scan Custom Expression.
///
/// `DELETE /zones/{zone_id}/content-upload-scan/payloads/{expression_id}`
Future<ApiResult<List<BundleCustomScan>?, Never>> wafContentScanningDeleteCustomScanExpressions({required BundleIdentifier zoneId, required BundleIdentifier expressionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return (json['result'] as List<dynamic>?)?.map((e) => BundleCustomScan.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get Content Scanning Status
///
/// Retrieve the current status of Content Scanning.
///
/// `GET /zones/{zone_id}/content-upload-scan/settings`
Future<ApiResult<BundleSchemasStatus?, Never>> wafContentScanningGetStatus({required BundleIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return json['result'] != null ? BundleSchemasStatus.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Content Scanning Status
///
/// Update the Content Scanning status.
///
/// `PUT /zones/{zone_id}/content-upload-scan/settings`
Future<ApiResult<BundleSchemasStatus?, Never>> wafContentScanningUpdateSettings({required BundleIdentifier zoneId, required WafContentScanningUpdateSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return json['result'] != null ? BundleSchemasStatus.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
