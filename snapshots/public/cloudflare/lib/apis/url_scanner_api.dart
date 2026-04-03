// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/urlscanner_create_scan_bulk_request.dart';import '../models/urlscanner_create_scan_bulk_response.dart';import '../models/urlscanner_create_scan_bulk_response400.dart';import '../models/urlscanner_create_scan_request2.dart';import '../models/urlscanner_create_scan_response4002.dart';import '../models/urlscanner_get_response_response400.dart';import '../models/urlscanner_get_scan_dom_response400.dart';import '../models/urlscanner_get_scan_har_response2.dart';import '../models/urlscanner_get_scan_har_response4002.dart';import '../models/urlscanner_get_scan_response2.dart';import '../models/urlscanner_get_scan_response4002.dart';import '../models/urlscanner_get_scan_screenshot_resolution2.dart';import '../models/urlscanner_get_scan_screenshot_response4002.dart';import '../models/urlscanner_search_scans_response2.dart';import '../models/urlscanner_search_scans_response4002.dart';/// UrlScannerApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UrlScannerApi with ApiExecutor {const UrlScannerApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Bulk create URL Scans
///
/// Submit URLs to scan. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/ and take into account scans submitted in bulk have lower priority and may take longer to finish.
///
/// `POST /accounts/{account_id}/urlscanner/v2/bulk`
Future<ApiResult<List<UrlscannerCreateScanBulkResponse>, UrlscannerCreateScanBulkResponse400>> urlscannerCreateScanBulkV2({required String accountId, List<UrlscannerCreateScanBulkRequest>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/bulk',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => UrlscannerCreateScanBulkResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return UrlscannerCreateScanBulkResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get URL scan's DOM
///
/// Returns a plain text response, with the scan's DOM content as rendered by Chrome.
///
/// `GET /accounts/{account_id}/urlscanner/v2/dom/{scan_id}`
Future<ApiResult<String, UrlscannerGetScanDomResponse400>> urlscannerGetScanDomV2({required String scanId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/dom/${Uri.encodeComponent(scanId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
  onError: (response) {
    return UrlscannerGetScanDomResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get URL scan's HAR
///
/// Get a URL scan's HAR file. See HAR spec at http://www.softwareishard.com/blog/har-12-spec/.
///
/// `GET /accounts/{account_id}/urlscanner/v2/har/{scan_id}`
Future<ApiResult<UrlscannerGetScanHarResponse2, UrlscannerGetScanHarResponse4002>> urlscannerGetScanHarV2({required String scanId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/har/${Uri.encodeComponent(scanId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UrlscannerGetScanHarResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return UrlscannerGetScanHarResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get raw response
///
/// Returns the raw response of the network request. Find the `response_id` in the `data.requests.response.hash`.
///
/// `GET /accounts/{account_id}/urlscanner/v2/responses/{response_id}`
Future<ApiResult<String, UrlscannerGetResponseResponse400>> urlscannerGetResponseV2({required String responseId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/responses/${Uri.encodeComponent(responseId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
  onError: (response) {
    return UrlscannerGetResponseResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get URL scan
///
/// Get URL scan by uuid
///
/// `GET /accounts/{account_id}/urlscanner/v2/result/{scan_id}`
Future<ApiResult<UrlscannerGetScanResponse2, UrlscannerGetScanResponse4002>> urlscannerGetScanV2({required String scanId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/result/${Uri.encodeComponent(scanId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UrlscannerGetScanResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return UrlscannerGetScanResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create URL Scan
///
/// Submit a URL to scan. Check limits at https://developers.cloudflare.com/security-center/investigate/scan-limits/.
///
/// `POST /accounts/{account_id}/urlscanner/v2/scan`
Future<ApiResult<String, UrlscannerCreateScanResponse4002>> urlscannerCreateScanV2({required String accountId, UrlscannerCreateScanRequest2? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/scan',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String;
  },
  onError: (response) {
    return UrlscannerCreateScanResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get screenshot
///
/// Get scan's screenshot by resolution (desktop/mobile/tablet).
///
/// `GET /accounts/{account_id}/urlscanner/v2/screenshots/{scan_id}.png`
Future<ApiResult<String, UrlscannerGetScanScreenshotResponse4002>> urlscannerGetScanScreenshotV2({required String scanId, required String accountId, UrlscannerGetScanScreenshotResolution2? resolution, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (resolution != null) {
  queryParameters['resolution'] = resolution.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/screenshots/${Uri.encodeComponent(scanId)}.png',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
  onError: (response) {
    return UrlscannerGetScanScreenshotResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Search URL scans
///
/// Use a subset of ElasticSearch Query syntax to filter scans. Some example queries:`<br/>` `<br/>`- 'path:"/bundles/jquery.js"': Searches for scans who requested resources with the given path.`<br/>`- 'page.asn:AS24940 AND hash:xxx': Websites hosted in AS24940 where a resource with the given hash was downloaded.`<br/>`- 'page.domain:microsoft* AND verdicts.malicious:true AND NOT page.domain:microsoft.com': malicious scans whose hostname starts with "microsoft".`<br/>`- 'apikey:me AND date:`[2025-01 TO 2025-02]`': my scans from 2025 January to 2025 February.
///
/// `GET /accounts/{account_id}/urlscanner/v2/search`
Future<ApiResult<UrlscannerSearchScansResponse2, UrlscannerSearchScansResponse4002>> urlscannerSearchScansV2({required String accountId, int? size, String? q, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (size != null) {
  queryParameters['size'] = size.toString();
}
if (q != null) {
  queryParameters['q'] = q;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/urlscanner/v2/search',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UrlscannerSearchScansResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return UrlscannerSearchScansResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
