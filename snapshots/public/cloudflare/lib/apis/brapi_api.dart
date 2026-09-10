// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/brapi_post_content_request.dart';import '../models/brapi_post_content_response400.dart';import '../models/brapi_post_content_response422.dart';import '../models/brapi_post_content_response429.dart';import '../models/brapi_post_content_response500.dart';import '../models/brapi_post_json_request.dart';import '../models/brapi_post_json_response400.dart';import '../models/brapi_post_json_response422.dart';import '../models/brapi_post_json_response429.dart';import '../models/brapi_post_json_response500.dart';import '../models/brapi_post_links_request.dart';import '../models/brapi_post_links_response400.dart';import '../models/brapi_post_links_response422.dart';import '../models/brapi_post_links_response429.dart';import '../models/brapi_post_links_response500.dart';import '../models/brapi_post_markdown_request.dart';import '../models/brapi_post_markdown_response400.dart';import '../models/brapi_post_markdown_response422.dart';import '../models/brapi_post_markdown_response429.dart';import '../models/brapi_post_markdown_response500.dart';import '../models/brapi_post_pdf_request.dart';import '../models/brapi_post_pdf_response400.dart';import '../models/brapi_post_pdf_response422.dart';import '../models/brapi_post_pdf_response429.dart';import '../models/brapi_post_pdf_response500.dart';import '../models/brapi_post_scrape_request.dart';import '../models/brapi_post_scrape_response400.dart';import '../models/brapi_post_scrape_response422.dart';import '../models/brapi_post_scrape_response429.dart';import '../models/brapi_post_scrape_response500.dart';import '../models/brapi_post_scrape_response_result.dart';import '../models/brapi_post_screenshot_request.dart';import '../models/brapi_post_screenshot_response.dart';import '../models/brapi_post_screenshot_response400.dart';import '../models/brapi_post_screenshot_response422.dart';import '../models/brapi_post_screenshot_response429.dart';import '../models/brapi_post_screenshot_response500.dart';import '../models/brapi_post_snapshot_request.dart';import '../models/brapi_post_snapshot_response400.dart';import '../models/brapi_post_snapshot_response422.dart';import '../models/brapi_post_snapshot_response429.dart';import '../models/brapi_post_snapshot_response500.dart';import '../models/brapi_post_snapshot_response_result.dart';/// BrapiApi operations.
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
Future<ApiResult<String?, OneOf4<BrapiPostContentResponse400, BrapiPostContentResponse422, BrapiPostContentResponse429, BrapiPostContentResponse500>>> brapiPostContent({required String accountId, required BrapiPostContentRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostContentResponse400, BrapiPostContentResponse422, BrapiPostContentResponse429, BrapiPostContentResponse500>.a(BrapiPostContentResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostContentResponse400, BrapiPostContentResponse422, BrapiPostContentResponse429, BrapiPostContentResponse500>.b(BrapiPostContentResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostContentResponse400, BrapiPostContentResponse422, BrapiPostContentResponse429, BrapiPostContentResponse500>.c(BrapiPostContentResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostContentResponse400, BrapiPostContentResponse422, BrapiPostContentResponse429, BrapiPostContentResponse500>.d(BrapiPostContentResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get json.
///
/// Gets json from a webpage from a provided URL or HTML. Pass `prompt` or `schema` in the body. Control page loading with `gotoOptions` and `waitFor*` options.
///
/// `POST /accounts/{account_id}/browser-rendering/json`
Future<ApiResult<Map<String, Map<String, dynamic>?>, OneOf4<BrapiPostJsonResponse400, BrapiPostJsonResponse422, BrapiPostJsonResponse429, BrapiPostJsonResponse500>>> brapiPostJson({required String accountId, required BrapiPostJsonRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
return (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as Map<String, dynamic>?));
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostJsonResponse400, BrapiPostJsonResponse422, BrapiPostJsonResponse429, BrapiPostJsonResponse500>.a(BrapiPostJsonResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostJsonResponse400, BrapiPostJsonResponse422, BrapiPostJsonResponse429, BrapiPostJsonResponse500>.b(BrapiPostJsonResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostJsonResponse400, BrapiPostJsonResponse422, BrapiPostJsonResponse429, BrapiPostJsonResponse500>.c(BrapiPostJsonResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostJsonResponse400, BrapiPostJsonResponse422, BrapiPostJsonResponse429, BrapiPostJsonResponse500>.d(BrapiPostJsonResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get Links.
///
/// Get links from a web page.
///
/// `POST /accounts/{account_id}/browser-rendering/links`
Future<ApiResult<List<String>, OneOf4<BrapiPostLinksResponse400, BrapiPostLinksResponse422, BrapiPostLinksResponse429, BrapiPostLinksResponse500>>> brapiPostLinks({required String accountId, required BrapiPostLinksRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostLinksResponse400, BrapiPostLinksResponse422, BrapiPostLinksResponse429, BrapiPostLinksResponse500>.a(BrapiPostLinksResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostLinksResponse400, BrapiPostLinksResponse422, BrapiPostLinksResponse429, BrapiPostLinksResponse500>.b(BrapiPostLinksResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostLinksResponse400, BrapiPostLinksResponse422, BrapiPostLinksResponse429, BrapiPostLinksResponse500>.c(BrapiPostLinksResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostLinksResponse400, BrapiPostLinksResponse422, BrapiPostLinksResponse429, BrapiPostLinksResponse500>.d(BrapiPostLinksResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get markdown.
///
/// Gets markdown of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options.
///
/// `POST /accounts/{account_id}/browser-rendering/markdown`
Future<ApiResult<String?, OneOf4<BrapiPostMarkdownResponse400, BrapiPostMarkdownResponse422, BrapiPostMarkdownResponse429, BrapiPostMarkdownResponse500>>> brapiPostMarkdown({required String accountId, required BrapiPostMarkdownRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostMarkdownResponse400, BrapiPostMarkdownResponse422, BrapiPostMarkdownResponse429, BrapiPostMarkdownResponse500>.a(BrapiPostMarkdownResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostMarkdownResponse400, BrapiPostMarkdownResponse422, BrapiPostMarkdownResponse429, BrapiPostMarkdownResponse500>.b(BrapiPostMarkdownResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostMarkdownResponse400, BrapiPostMarkdownResponse422, BrapiPostMarkdownResponse429, BrapiPostMarkdownResponse500>.c(BrapiPostMarkdownResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostMarkdownResponse400, BrapiPostMarkdownResponse422, BrapiPostMarkdownResponse429, BrapiPostMarkdownResponse500>.d(BrapiPostMarkdownResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get PDF.
///
/// Fetches rendered PDF from provided URL or HTML. Check available options like `gotoOptions` and `waitFor*` to control page load behaviour.
///
/// `POST /accounts/{account_id}/browser-rendering/pdf`
Future<ApiResult<String, OneOf4<BrapiPostPdfResponse400, BrapiPostPdfResponse422, BrapiPostPdfResponse429, BrapiPostPdfResponse500>>> brapiPostPdf({required String accountId, required BrapiPostPdfRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostPdfResponse400, BrapiPostPdfResponse422, BrapiPostPdfResponse429, BrapiPostPdfResponse500>.a(BrapiPostPdfResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostPdfResponse400, BrapiPostPdfResponse422, BrapiPostPdfResponse429, BrapiPostPdfResponse500>.b(BrapiPostPdfResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostPdfResponse400, BrapiPostPdfResponse422, BrapiPostPdfResponse429, BrapiPostPdfResponse500>.c(BrapiPostPdfResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostPdfResponse400, BrapiPostPdfResponse422, BrapiPostPdfResponse429, BrapiPostPdfResponse500>.d(BrapiPostPdfResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Scrape elements.
///
/// Get meta attributes like height, width, text and others of selected elements.
///
/// `POST /accounts/{account_id}/browser-rendering/scrape`
Future<ApiResult<List<BrapiPostScrapeResponseResult>, OneOf4<BrapiPostScrapeResponse400, BrapiPostScrapeResponse422, BrapiPostScrapeResponse429, BrapiPostScrapeResponse500>>> brapiPostScrape({required String accountId, required BrapiPostScrapeRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScrapeResponse400, BrapiPostScrapeResponse422, BrapiPostScrapeResponse429, BrapiPostScrapeResponse500>.a(BrapiPostScrapeResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScrapeResponse400, BrapiPostScrapeResponse422, BrapiPostScrapeResponse429, BrapiPostScrapeResponse500>.b(BrapiPostScrapeResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScrapeResponse400, BrapiPostScrapeResponse422, BrapiPostScrapeResponse429, BrapiPostScrapeResponse500>.c(BrapiPostScrapeResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScrapeResponse400, BrapiPostScrapeResponse422, BrapiPostScrapeResponse429, BrapiPostScrapeResponse500>.d(BrapiPostScrapeResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get screenshot.
///
/// Takes a screenshot of a webpage from provided URL or HTML. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.
///
/// `POST /accounts/{account_id}/browser-rendering/screenshot`
Future<ApiResult<OneOf2<BrapiPostScreenshotResponse, String>, OneOf4<BrapiPostScreenshotResponse400, BrapiPostScreenshotResponse422, BrapiPostScreenshotResponse429, BrapiPostScreenshotResponse500>>> brapiPostScreenshot({required String accountId, required BrapiPostScreenshotRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<BrapiPostScreenshotResponse, String>.a(BrapiPostScreenshotResponse.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'image/jpg')) {
final value = (() { return response.body; })();
return OneOf2<BrapiPostScreenshotResponse, String>.b(value);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return response.body; })();
return OneOf2<BrapiPostScreenshotResponse, String>.b(value);
}
if (responseMediaTypeMatches(contentType, 'image/webp')) {
final value = (() { return response.body; })();
return OneOf2<BrapiPostScreenshotResponse, String>.b(value);
}
if (responseMediaTypeMatches(contentType, 'text/plain')) {
final value = (() { return response.body; })();
return OneOf2<BrapiPostScreenshotResponse, String>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<BrapiPostScreenshotResponse, String>.a(BrapiPostScreenshotResponse.fromJson(json as Map<String, dynamic>));

  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScreenshotResponse400, BrapiPostScreenshotResponse422, BrapiPostScreenshotResponse429, BrapiPostScreenshotResponse500>.a(BrapiPostScreenshotResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScreenshotResponse400, BrapiPostScreenshotResponse422, BrapiPostScreenshotResponse429, BrapiPostScreenshotResponse500>.b(BrapiPostScreenshotResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScreenshotResponse400, BrapiPostScreenshotResponse422, BrapiPostScreenshotResponse429, BrapiPostScreenshotResponse500>.c(BrapiPostScreenshotResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostScreenshotResponse400, BrapiPostScreenshotResponse422, BrapiPostScreenshotResponse429, BrapiPostScreenshotResponse500>.d(BrapiPostScreenshotResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get HTML content and screenshot.
///
/// Returns the page's HTML content and screenshot. Control page loading with `gotoOptions` and `waitFor*` options. Customize screenshots with `viewport`, `fullPage`, `clip` and others.
///
/// `POST /accounts/{account_id}/browser-rendering/snapshot`
Future<ApiResult<BrapiPostSnapshotResponseResult?, OneOf4<BrapiPostSnapshotResponse400, BrapiPostSnapshotResponse422, BrapiPostSnapshotResponse429, BrapiPostSnapshotResponse500>>> brapiPostSnapshot({required String accountId, required BrapiPostSnapshotRequest body, double? cacheTtl, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostSnapshotResponse400, BrapiPostSnapshotResponse422, BrapiPostSnapshotResponse429, BrapiPostSnapshotResponse500>.a(BrapiPostSnapshotResponse400.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostSnapshotResponse400, BrapiPostSnapshotResponse422, BrapiPostSnapshotResponse429, BrapiPostSnapshotResponse500>.b(BrapiPostSnapshotResponse422.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostSnapshotResponse400, BrapiPostSnapshotResponse422, BrapiPostSnapshotResponse429, BrapiPostSnapshotResponse500>.c(BrapiPostSnapshotResponse429.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf4<BrapiPostSnapshotResponse400, BrapiPostSnapshotResponse422, BrapiPostSnapshotResponse429, BrapiPostSnapshotResponse500>.d(BrapiPostSnapshotResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
