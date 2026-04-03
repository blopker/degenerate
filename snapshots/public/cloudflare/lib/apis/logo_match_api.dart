// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/error_model.dart';import '../models/image_file.dart';import '../models/logo.dart';import '../models/logo_match.dart';/// LogoMatchApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LogoMatchApi with ApiExecutor {const LogoMatchApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Read matches for logo queries by ID
///
/// Return matches for logo queries based on ID
///
/// `GET /accounts/{account_id}/brand-protection/logo-matches`
Future<ApiResult<LogoMatch, ErrorModel>> getAccountsBrandProtectionLogoMatches({required String accountId, List<String>? logoId, String? offset, String? limit, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (logoId != null) {
for (final item in logoId) {
  queryParametersList.add(ApiQueryParameter(name: 'logo_id', value: item));
}
}
if (offset != null) {
  queryParameters['offset'] = offset;
}
if (limit != null) {
  queryParameters['limit'] = limit;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/logo-matches',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return LogoMatch.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Download matches for logo queries by ID
///
/// Return matches as CSV for logo queries based on ID
///
/// `GET /accounts/{account_id}/brand-protection/logo-matches/download`
Future<ApiResult<LogoMatch, ErrorModel>> getAccountsBrandProtectionLogoMatchesDownload({required String accountId, List<String>? logoId, String? offset, String? limit, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (logoId != null) {
for (final item in logoId) {
  queryParametersList.add(ApiQueryParameter(name: 'logo_id', value: item));
}
}
if (offset != null) {
  queryParameters['offset'] = offset;
}
if (limit != null) {
  queryParameters['limit'] = limit;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/logo-matches/download',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return LogoMatch.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read all saved logo queries
///
/// Return all saved logo queries
///
/// `GET /accounts/{account_id}/brand-protection/logos`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionLogos({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/logos',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new saved logo queries from image files
///
/// Return new saved logo queries created from image files
///
/// `POST /accounts/{account_id}/brand-protection/logos`
Future<ApiResult<Logo, ErrorModel>> postAccountsBrandProtectionLogos({required String accountId, String? tag, String? matchType, double? threshold, required ImageFile body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (tag != null) {
  queryParameters['tag'] = tag;
}
if (matchType != null) {
  queryParameters['match_type'] = matchType;
}
if (threshold != null) {
  queryParameters['threshold'] = threshold.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/logos',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: [
    if (body.image case final image$?)
      'image=${Uri.encodeQueryComponent(base64Encode(image$))}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Logo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read saved logo queries by ID
///
/// Return saved logo queries based on ID
///
/// `GET /accounts/{account_id}/brand-protection/logos/{logo_id}`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionLogos2({required String accountId, required String logoId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/logos/${Uri.encodeComponent(logoId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete saved logo queries by ID
///
/// Return a success message after deleting saved logo queries by ID
///
/// `DELETE /accounts/{account_id}/brand-protection/logos/{logo_id}`
Future<ApiResult<void, ErrorModel>> deleteAccountsBrandProtectionLogos({required String accountId, required String logoId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/logos/${Uri.encodeComponent(logoId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new logo queries from image files
///
/// Return new logo queries created from image files
///
/// `POST /accounts/{account_id}/brand-protection/scan-logo`
Future<ApiResult<void, ErrorModel>> postAccountsBrandProtectionScanLogo({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/scan-logo',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new logo queries from URLs
///
/// Return new logo queries created from URLs
///
/// `POST /accounts/{account_id}/brand-protection/scan-page`
Future<ApiResult<void, ErrorModel>> postAccountsBrandProtectionScanPage({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/scan-page',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Internal route for testing signed URLs
///
/// `GET /signed-url`
Future<ApiResult<void, ErrorModel>> getSignedUrl({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/signed-url',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
