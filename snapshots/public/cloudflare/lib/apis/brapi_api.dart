// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/brapi_post_content_request.dart';import '../models/brapi_post_content_response400.dart';import '../models/brapi_post_json_request.dart';import '../models/brapi_post_json_response400.dart';import '../models/brapi_post_links_request.dart';import '../models/brapi_post_links_response400.dart';import '../models/brapi_post_markdown_request.dart';import '../models/brapi_post_markdown_response400.dart';import '../models/brapi_post_pdf_request.dart';import '../models/brapi_post_pdf_response400.dart';import '../models/brapi_post_scrape_request.dart';import '../models/brapi_post_scrape_response400.dart';import '../models/brapi_post_scrape_response_result.dart';import '../models/brapi_post_screenshot_request.dart';import '../models/brapi_post_screenshot_response.dart';import '../models/brapi_post_screenshot_response400.dart';import '../models/brapi_post_snapshot_request.dart';import '../models/brapi_post_snapshot_response400.dart';import '../models/brapi_post_snapshot_response_result.dart';/// BrapiApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class BrapiApi with ApiExecutor {const BrapiApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get HTML content.
///
/// Fetches rendered HTML content from provided URL or HTML. Check available options like `gotoOptions` and `waitFor*` to control page load behaviour.
///
/// `POST /accounts/{account_id}/browser-rendering/content`
Future<ApiResult<String?, BrapiPostContentResponse400>> brapiPostContent({required String accountId, double? cacheTtl, required BrapiPostContentRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/content',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
  onError: (response) {
    return BrapiPostContentResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get json.
///
/// Gets json from a webpage from a provided URL or HTML. Pass `prompt` or `schema` in the body. Control page loading with `gotoOptions` and `waitFor*` options.
///
/// `POST /accounts/{account_id}/browser-rendering/json`
Future<ApiResult<Map<String, Map<String, dynamic>>, BrapiPostJsonResponse400>> brapiPostJson({required String accountId, double? cacheTtl, required BrapiPostJsonRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as Map<String, dynamic>));
  },
  onError: (response) {
    return BrapiPostJsonResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Links.
///
/// Get links from a web page.
///
/// `POST /accounts/{account_id}/browser-rendering/links`
Future<ApiResult<List<String>, BrapiPostLinksResponse400>> brapiPostLinks({required String accountId, double? cacheTtl, required BrapiPostLinksRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/links',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => e as String).toList();
  },
  onError: (response) {
    return BrapiPostLinksResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get markdown.
///
/// Gets markdown of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options.
///
/// `POST /accounts/{account_id}/browser-rendering/markdown`
Future<ApiResult<String?, BrapiPostMarkdownResponse400>> brapiPostMarkdown({required String accountId, double? cacheTtl, required BrapiPostMarkdownRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/markdown',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
  onError: (response) {
    return BrapiPostMarkdownResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get PDF.
///
/// Fetches rendered PDF from provided URL or HTML. Check available options like `gotoOptions` and `waitFor*` to control page load behaviour.
///
/// `POST /accounts/{account_id}/browser-rendering/pdf`
Future<ApiResult<String, BrapiPostPdfResponse400>> brapiPostPdf({required String accountId, double? cacheTtl, required BrapiPostPdfRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/pdf',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
  onError: (response) {
    return BrapiPostPdfResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Scrape elements.
///
/// Get meta attributes like height, width, text and others of selected elements.
///
/// `POST /accounts/{account_id}/browser-rendering/scrape`
Future<ApiResult<List<BrapiPostScrapeResponseResult>, BrapiPostScrapeResponse400>> brapiPostScrape({required String accountId, double? cacheTtl, required BrapiPostScrapeRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/scrape',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => BrapiPostScrapeResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BrapiPostScrapeResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get screenshot.
///
/// Takes a screenshot of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.
///
/// `POST /accounts/{account_id}/browser-rendering/screenshot`
Future<ApiResult<BrapiPostScreenshotResponse, BrapiPostScreenshotResponse400>> brapiPostScreenshot({required String accountId, double? cacheTtl, required BrapiPostScreenshotRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/screenshot',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return BrapiPostScreenshotResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BrapiPostScreenshotResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get HTML content and screenshot.
///
/// Returns the page's HTML content and screenshot. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.
///
/// `POST /accounts/{account_id}/browser-rendering/snapshot`
Future<ApiResult<BrapiPostSnapshotResponseResult?, BrapiPostSnapshotResponse400>> brapiPostSnapshot({required String accountId, double? cacheTtl, required BrapiPostSnapshotRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cacheTtl != null) {
  queryParameters['cacheTTL'] = cacheTtl.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/browser-rendering/snapshot',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? BrapiPostSnapshotResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return BrapiPostSnapshotResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
