// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/error_response2.dart';import '../models/no_result_response.dart';import '../models/pay_per_crawl_stripe_connect_resp.dart';import '../models/pay_per_crawl_stripe_connection.dart';/// PpcStripeApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PpcStripeApi with ApiExecutor {const PpcStripeApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Gets the stripe config for a crawler
///
/// Gets the stripe config for a crawler.
///
/// `GET /accounts/{account_id}/pay-per-crawl/crawler/stripe`
Future<ApiResult<PayPerCrawlStripeConnection?, ErrorResponse2>> payPerCrawlCrawlerGetStripeConfig({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/crawler/stripe',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlStripeConnection.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates the stripe config for a crawler
///
/// Creates the stripe config for a crawler.
///
/// `POST /accounts/{account_id}/pay-per-crawl/crawler/stripe`
Future<ApiResult<PayPerCrawlStripeConnectResp?, ErrorResponse2>> payPerCrawlCrawlerCreateStripeConfig({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/crawler/stripe',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlStripeConnectResp.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes the stripe config for a crawler
///
/// Deletes the stripe config for a crawler.
///
/// `DELETE /accounts/{account_id}/pay-per-crawl/crawler/stripe`
Future<ApiResult<NoResultResponse, ErrorResponse2>> payPerCrawlCrawlerDeleteStripeConfig({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/crawler/stripe',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return NoResultResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Gets the stripe config for a publisher
///
/// Gets the stripe config for a publisher.
///
/// `GET /accounts/{account_id}/pay-per-crawl/publisher/stripe`
Future<ApiResult<PayPerCrawlStripeConnection?, ErrorResponse2>> payPerCrawlPublisherGetStripeConfig({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/publisher/stripe',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlStripeConnection.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates the stripe config for a publisher
///
/// Creates the stripe config for a publisher.
///
/// `POST /accounts/{account_id}/pay-per-crawl/publisher/stripe`
Future<ApiResult<PayPerCrawlStripeConnectResp?, ErrorResponse2>> payPerCrawlPublisherCreateStripeConfig({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/publisher/stripe',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? PayPerCrawlStripeConnectResp.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes the stripe config for a publisher
///
/// Deletes the stripe config for a publisher.
///
/// `DELETE /accounts/{account_id}/pay-per-crawl/publisher/stripe`
Future<ApiResult<NoResultResponse, ErrorResponse2>> payPerCrawlPublisherDeleteStripeConfig({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/pay-per-crawl/publisher/stripe',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return NoResultResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
