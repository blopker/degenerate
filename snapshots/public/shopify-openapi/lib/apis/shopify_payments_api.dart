// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'package:degenerate_runtime/degenerate_runtime.dart';/// ShopifyPaymentsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ShopifyPaymentsApi with ApiExecutor {const ShopifyPaymentsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves the account's current balance.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/balance#show-2020-01
///
/// `GET /admin/api/2020-01/shopify_payments/balance.json`
Future<ApiResult<void, Never>> deprecated202001GetShopifyPaymentsBalance({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shopify_payments/balance.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the account's current balance.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/balance#show-2020-04
///
/// `GET /admin/api/2020-04/shopify_payments/balance.json`
Future<ApiResult<void, Never>> deprecated202004GetShopifyPaymentsBalance({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/shopify_payments/balance.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the account's current balance.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/balance#show-2020-07
///
/// `GET /admin/api/2020-07/shopify_payments/balance.json`
Future<ApiResult<void, Never>> deprecated202007GetShopifyPaymentsBalance({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/shopify_payments/balance.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the account's current balance.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/balance#show-2020-10
///
/// `GET /admin/api/2020-10/shopify_payments/balance.json`
Future<ApiResult<void, Never>> getShopifyPaymentsBalance({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/shopify_payments/balance.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the account's current balance.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/balance#show-2021-01
///
/// `GET /admin/api/2021-01/shopify_payments/balance.json`
Future<ApiResult<void, Never>> deprecated202101GetShopifyPaymentsBalance({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/shopify_payments/balance.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the account's current balance.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/balance#show-unstable
///
/// `GET /admin/api/unstable/shopify_payments/balance.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetShopifyPaymentsBalance({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/shopify_payments/balance.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve all disputes ordered by initiated_at date and time (ISO 8601 format), with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/dispute#index-2020-01
///
/// `GET /admin/api/2020-01/shopify_payments/disputes.json`
Future<ApiResult<void, Never>> deprecated202001GetShopifyPaymentsDisputes({dynamic sinceId, dynamic lastId, dynamic status, dynamic initiatedAt, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (status != null) queryParameters['status'] = status.toString();
if (initiatedAt != null) queryParameters['initiated_at'] = initiatedAt.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shopify_payments/disputes.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single dispute by ID.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/dispute#show-2020-01
///
/// `GET /admin/api/2020-01/shopify_payments/disputes/{dispute_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetShopifyPaymentsDisputesParamDisputeId({required String disputeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shopify_payments/disputes/${Uri.encodeComponent(disputeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve all disputes ordered by initiated_at date and time (ISO 8601 format), with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/dispute#index-2020-04
///
/// `GET /admin/api/2020-04/shopify_payments/disputes.json`
Future<ApiResult<void, Never>> deprecated202004GetShopifyPaymentsDisputes({dynamic sinceId, dynamic lastId, dynamic status, dynamic initiatedAt, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (status != null) queryParameters['status'] = status.toString();
if (initiatedAt != null) queryParameters['initiated_at'] = initiatedAt.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/shopify_payments/disputes.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of all payouts ordered by payout date, with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#index-2020-01
///
/// `GET /admin/api/2020-01/shopify_payments/payouts.json`
Future<ApiResult<void, Never>> deprecated202001GetShopifyPaymentsPayouts({dynamic sinceId, dynamic lastId, dynamic dateMin, dynamic dateMax, dynamic date, dynamic status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (dateMin != null) queryParameters['date_min'] = dateMin.toString();
if (dateMax != null) queryParameters['date_max'] = dateMax.toString();
if (date != null) queryParameters['date'] = date.toString();
if (status != null) queryParameters['status'] = status.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shopify_payments/payouts.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single payout by id.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#show-2020-01
///
/// `GET /admin/api/2020-01/shopify_payments/payouts/{payout_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetShopifyPaymentsPayoutsParamPayoutId({required String payoutId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shopify_payments/payouts/${Uri.encodeComponent(payoutId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of all payouts ordered by payout date, with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#index-2020-04
///
/// `GET /admin/api/2020-04/shopify_payments/payouts.json`
Future<ApiResult<void, Never>> deprecated202004GetShopifyPaymentsPayouts({dynamic sinceId, dynamic lastId, dynamic dateMin, dynamic dateMax, dynamic date, dynamic status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (dateMin != null) queryParameters['date_min'] = dateMin.toString();
if (dateMax != null) queryParameters['date_max'] = dateMax.toString();
if (date != null) queryParameters['date'] = date.toString();
if (status != null) queryParameters['status'] = status.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/shopify_payments/payouts.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single payout by id.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#show-2020-04
///
/// `GET /admin/api/2020-04/shopify_payments/payouts/{payout_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetShopifyPaymentsPayoutsParamPayoutId({required String payoutId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/shopify_payments/payouts/${Uri.encodeComponent(payoutId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of all payouts ordered by payout date, with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#index-2020-07
///
/// `GET /admin/api/2020-07/shopify_payments/payouts.json`
Future<ApiResult<void, Never>> deprecated202007GetShopifyPaymentsPayouts({dynamic sinceId, dynamic lastId, dynamic dateMin, dynamic dateMax, dynamic date, dynamic status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (dateMin != null) queryParameters['date_min'] = dateMin.toString();
if (dateMax != null) queryParameters['date_max'] = dateMax.toString();
if (date != null) queryParameters['date'] = date.toString();
if (status != null) queryParameters['status'] = status.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/shopify_payments/payouts.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single payout by id.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#show-2020-07
///
/// `GET /admin/api/2020-07/shopify_payments/payouts/{payout_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetShopifyPaymentsPayoutsParamPayoutId({required String payoutId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/shopify_payments/payouts/${Uri.encodeComponent(payoutId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of all payouts ordered by payout date, with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#index-2020-10
///
/// `GET /admin/api/2020-10/shopify_payments/payouts.json`
Future<ApiResult<void, Never>> getShopifyPaymentsPayouts({dynamic sinceId, dynamic lastId, dynamic dateMin, dynamic dateMax, dynamic date, dynamic status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (dateMin != null) queryParameters['date_min'] = dateMin.toString();
if (dateMax != null) queryParameters['date_max'] = dateMax.toString();
if (date != null) queryParameters['date'] = date.toString();
if (status != null) queryParameters['status'] = status.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/shopify_payments/payouts.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single payout by id.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#show-2020-10
///
/// `GET /admin/api/2020-10/shopify_payments/payouts/{payout_id}.json`
Future<ApiResult<void, Never>> getShopifyPaymentsPayoutsParamPayoutId({required String payoutId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/shopify_payments/payouts/${Uri.encodeComponent(payoutId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of all payouts ordered by payout date, with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#index-2021-01
///
/// `GET /admin/api/2021-01/shopify_payments/payouts.json`
Future<ApiResult<void, Never>> deprecated202101GetShopifyPaymentsPayouts({dynamic sinceId, dynamic lastId, dynamic dateMin, dynamic dateMax, dynamic date, dynamic status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (dateMin != null) queryParameters['date_min'] = dateMin.toString();
if (dateMax != null) queryParameters['date_max'] = dateMax.toString();
if (date != null) queryParameters['date'] = date.toString();
if (status != null) queryParameters['status'] = status.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/shopify_payments/payouts.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single payout by id.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#show-2021-01
///
/// `GET /admin/api/2021-01/shopify_payments/payouts/{payout_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetShopifyPaymentsPayoutsParamPayoutId({required String payoutId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/shopify_payments/payouts/${Uri.encodeComponent(payoutId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of all payouts ordered by payout date, with the most recent being first.
///           Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#index-unstable
///
/// `GET /admin/api/unstable/shopify_payments/payouts.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetShopifyPaymentsPayouts({dynamic sinceId, dynamic lastId, dynamic dateMin, dynamic dateMax, dynamic date, dynamic status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (dateMin != null) queryParameters['date_min'] = dateMin.toString();
if (dateMax != null) queryParameters['date_max'] = dateMax.toString();
if (date != null) queryParameters['date'] = date.toString();
if (status != null) queryParameters['status'] = status.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/shopify_payments/payouts.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single payout by id.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/payout#show-unstable
///
/// `GET /admin/api/unstable/shopify_payments/payouts/{payout_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetShopifyPaymentsPayoutsParamPayoutId({required String payoutId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/shopify_payments/payouts/${Uri.encodeComponent(payoutId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of all balance transactions ordered by processing
/// time, with the most recent being first.
/// Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/shopify_payments/transaction#index-2020-01
///
/// `GET /admin/api/2020-01/shopify_payments/balance/transactions.json`
Future<ApiResult<void, Never>> deprecated202001GetShopifyPaymentsBalanceTransactions({dynamic sinceId, dynamic lastId, dynamic test, dynamic payoutId, dynamic payoutStatus, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (lastId != null) queryParameters['last_id'] = lastId.toString();
if (test != null) queryParameters['test'] = test.toString();
if (payoutId != null) queryParameters['payout_id'] = payoutId.toString();
if (payoutStatus != null) queryParameters['payout_status'] = payoutStatus.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/shopify_payments/balance/transactions.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
