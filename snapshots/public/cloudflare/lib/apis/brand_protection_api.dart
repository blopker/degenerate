// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/error_model.dart';import '../models/url_submit.dart';/// BrandProtectionApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class BrandProtectionApi with ApiExecutor {const BrandProtectionApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Read all alerts on submitted domains
///
/// Return all alerts on submitted domains
///
/// `GET /accounts/{account_id}/brand-protection/alerts`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionAlerts({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/alerts',
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
/// Update alerts on submitted domains by ID
///
/// Return a success message after updating alerts on submitted domains by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/alerts`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionAlerts({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/alerts',
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
/// Update verification statuses of tracked URLs to awaiting by ID
///
/// Return a success message after updating verification statuses of tracked URLs to awaiting by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/alerts/clear`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionAlertsClear({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/alerts/clear',
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
/// Update verification statuses of tracked URLs to disproven by ID
///
/// Return a success message after updating verification statuses of tracked URLs to disproven by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/alerts/refute`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionAlertsRefute({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/alerts/refute',
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
/// Update verification statuses of tracked URLs to confirmed by ID
///
/// Return a success message after updating verification statuses of tracked URLs to confirmed by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/alerts/verify`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionAlertsVerify({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/alerts/verify',
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
/// Read all brands
///
/// Return all brands
///
/// `GET /accounts/{account_id}/brand-protection/brands`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionBrands({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/brands',
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
/// Create new brands
///
/// Return new brands
///
/// `POST /accounts/{account_id}/brand-protection/brands`
Future<ApiResult<void, ErrorModel>> postAccountsBrandProtectionBrands({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/brands',
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
/// Delete brands by ID
///
/// Return a success message after deleting brands by ID
///
/// `DELETE /accounts/{account_id}/brand-protection/brands`
Future<ApiResult<void, ErrorModel>> deleteAccountsBrandProtectionBrands({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/brands',
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
/// Read patterns for brands by ID
///
/// Return patterns for brands based on ID
///
/// `GET /accounts/{account_id}/brand-protection/brands/patterns`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionBrandsPatterns({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/brands/patterns',
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
/// Create new patterns for brands by ID
///
/// Return a success message after creating new patterns for brands by ID
///
/// `POST /accounts/{account_id}/brand-protection/brands/patterns`
Future<ApiResult<void, ErrorModel>> postAccountsBrandProtectionBrandsPatterns({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/brands/patterns',
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
/// Delete patterns for brands by ID
///
/// Return a success message after deleting patterns for brands by ID
///
/// `DELETE /accounts/{account_id}/brand-protection/brands/patterns`
Future<ApiResult<void, ErrorModel>> deleteAccountsBrandProtectionBrandsPatterns({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/brands/patterns',
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
/// Update verification statuses of submitted URLs to awaiting by ID
///
/// Return a success message after updating verification statuses of submitted URLs to awaiting by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/clear`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionClear({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/clear',
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
/// Read submitted domains by ID
///
/// Return submitted domains based on ID
///
/// `GET /accounts/{account_id}/brand-protection/domain-info`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionDomainInfo({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/domain-info',
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
/// Read recent URL submissions
///
/// Return recent URL submissions
///
/// `GET /accounts/{account_id}/brand-protection/recent-submissions`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionRecentSubmissions({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/recent-submissions',
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
/// Update verification statuses of submitted URLs to disproven by ID
///
/// Return a success message after updating verification statuses of submitted URLs to disproven by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/refute`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionRefute({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/refute',
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
/// Read URL submissions by ID
///
/// Return URL submissions based on ID
///
/// `GET /accounts/{account_id}/brand-protection/submission-info`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionSubmissionInfo({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/submission-info',
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
/// Create new URL submissions
///
/// Return new URL submissions
///
/// `POST /accounts/{account_id}/brand-protection/submit`
Future<ApiResult<UrlSubmit, ErrorModel>> postAccountsBrandProtectionSubmit({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/submit',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UrlSubmit.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read submitted domains by pattern
///
/// Return submitted domains based on pattern
///
/// `GET /accounts/{account_id}/brand-protection/tracked-domains`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionTrackedDomains({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/tracked-domains',
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
/// Read submitted URLs by ID
///
/// Return submitted URLs based on ID
///
/// `GET /accounts/{account_id}/brand-protection/url-info`
Future<ApiResult<List<Map<String, dynamic>>?, ErrorModel>> getAccountsBrandProtectionUrlInfo({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/url-info',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList();
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update verification statuses of submitted URLs to confirmed by ID
///
/// Return a success message after updating verification statuses of submitted URLs to confirmed by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/verify`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionVerify({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/verify',
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
/// Internal route for testing URL submissions
///
/// `POST /internal/submit`
Future<ApiResult<void, ErrorModel>> postInternalSubmit({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/internal/submit',
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
/// Run liveness checks
///
/// Return a success message after running liveness checks
///
/// `GET /live`
Future<ApiResult<void, ErrorModel>> getLive({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/live',
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
/// Run readiness checks
///
/// Return a success message after running readiness checks
///
/// `GET /ready`
Future<ApiResult<void, ErrorModel>> getReady({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/ready',
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
