// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// BillingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class BillingApi with ApiExecutor {const BillingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves a list of application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#index-2020-01
///
/// `GET /admin/api/2020-01/application_charges.json`
Future<ApiResult<void, Never>> deprecated202001GetApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/application_charges.json',
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
/// Creates an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#create-2020-01
///
/// `POST /admin/api/2020-01/application_charges.json`
Future<ApiResult<void, Never>> deprecated202001CreateApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#show-2020-01
///
/// `GET /admin/api/2020-01/application_charges/{application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetApplicationChargesParamApplicationChargeId({required String applicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/application_charges/${Uri.encodeComponent(applicationChargeId)}.json',
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
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// "Activates an accepted application charge. One-time charges are now immediately activated
/// when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#activate-2020-01
///
/// `POST /admin/api/2020-01/application_charges/{application_charge_id}/activate.json`
Future<ApiResult<void, Never>> deprecated202001CreateApplicationChargesParamApplicationChargeIdActivate({required String applicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/application_charges/${Uri.encodeComponent(applicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#index-2020-04
///
/// `GET /admin/api/2020-04/application_charges.json`
Future<ApiResult<void, Never>> deprecated202004GetApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/application_charges.json',
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
/// Creates an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#create-2020-04
///
/// `POST /admin/api/2020-04/application_charges.json`
Future<ApiResult<void, Never>> deprecated202004CreateApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#show-2020-04
///
/// `GET /admin/api/2020-04/application_charges/{application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetApplicationChargesParamApplicationChargeId({required String applicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/application_charges/${Uri.encodeComponent(applicationChargeId)}.json',
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
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// "Activates an accepted application charge. One-time charges are now immediately activated
/// when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#activate-2020-04
///
/// `POST /admin/api/2020-04/application_charges/{application_charge_id}/activate.json`
Future<ApiResult<void, Never>> deprecated202004CreateApplicationChargesParamApplicationChargeIdActivate({required String applicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/application_charges/${Uri.encodeComponent(applicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#index-2020-07
///
/// `GET /admin/api/2020-07/application_charges.json`
Future<ApiResult<void, Never>> deprecated202007GetApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/application_charges.json',
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
/// Creates an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#create-2020-07
///
/// `POST /admin/api/2020-07/application_charges.json`
Future<ApiResult<void, Never>> deprecated202007CreateApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#show-2020-07
///
/// `GET /admin/api/2020-07/application_charges/{application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetApplicationChargesParamApplicationChargeId({required String applicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/application_charges/${Uri.encodeComponent(applicationChargeId)}.json',
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
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// "Activates an accepted application charge. One-time charges are now immediately activated
/// when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#activate-2020-07
///
/// `POST /admin/api/2020-07/application_charges/{application_charge_id}/activate.json`
Future<ApiResult<void, Never>> deprecated202007CreateApplicationChargesParamApplicationChargeIdActivate({required String applicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/application_charges/${Uri.encodeComponent(applicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#index-2020-10
///
/// `GET /admin/api/2020-10/application_charges.json`
Future<ApiResult<void, Never>> getApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/application_charges.json',
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
/// Creates an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#create-2020-10
///
/// `POST /admin/api/2020-10/application_charges.json`
Future<ApiResult<void, Never>> createApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#show-2020-10
///
/// `GET /admin/api/2020-10/application_charges/{application_charge_id}.json`
Future<ApiResult<void, Never>> getApplicationChargesParamApplicationChargeId({required String applicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/application_charges/${Uri.encodeComponent(applicationChargeId)}.json',
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
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// "Activates an accepted application charge. One-time charges are now immediately activated
/// when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#activate-2020-10
///
/// `POST /admin/api/2020-10/application_charges/{application_charge_id}/activate.json`
Future<ApiResult<void, Never>> createApplicationChargesParamApplicationChargeIdActivate({required String applicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/application_charges/${Uri.encodeComponent(applicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#index-2021-01
///
/// `GET /admin/api/2021-01/application_charges.json`
Future<ApiResult<void, Never>> deprecated202101GetApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/application_charges.json',
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
/// Creates an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#create-2021-01
///
/// `POST /admin/api/2021-01/application_charges.json`
Future<ApiResult<void, Never>> deprecated202101CreateApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#show-2021-01
///
/// `GET /admin/api/2021-01/application_charges/{application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetApplicationChargesParamApplicationChargeId({required String applicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/application_charges/${Uri.encodeComponent(applicationChargeId)}.json',
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
/// Retrieves a list of application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#index-unstable
///
/// `GET /admin/api/unstable/application_charges.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/application_charges.json',
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
/// Creates an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#create-unstable
///
/// `POST /admin/api/unstable/application_charges.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves an application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcharge#show-unstable
///
/// `GET /admin/api/unstable/application_charges/{application_charge_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetApplicationChargesParamApplicationChargeId({required String applicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/application_charges/${Uri.encodeComponent(applicationChargeId)}.json',
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
/// Retrieves all application credits
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#index-2020-01
///
/// `GET /admin/api/2020-01/application_credits.json`
Future<ApiResult<void, Never>> deprecated202001GetApplicationCredits({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/application_credits.json',
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
/// Creates an application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#create-2020-01
///
/// `POST /admin/api/2020-01/application_credits.json`
Future<ApiResult<void, Never>> deprecated202001CreateApplicationCredits({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/application_credits.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#show-2020-01
///
/// `GET /admin/api/2020-01/application_credits/{application_credit_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetApplicationCreditsParamApplicationCreditId({required String applicationCreditId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/application_credits/${Uri.encodeComponent(applicationCreditId)}.json',
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
/// Retrieves all application credits
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#index-2020-04
///
/// `GET /admin/api/2020-04/application_credits.json`
Future<ApiResult<void, Never>> deprecated202004GetApplicationCredits({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/application_credits.json',
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
/// Creates an application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#create-2020-04
///
/// `POST /admin/api/2020-04/application_credits.json`
Future<ApiResult<void, Never>> deprecated202004CreateApplicationCredits({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/application_credits.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#show-2020-04
///
/// `GET /admin/api/2020-04/application_credits/{application_credit_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetApplicationCreditsParamApplicationCreditId({required String applicationCreditId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/application_credits/${Uri.encodeComponent(applicationCreditId)}.json',
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
/// Retrieves all application credits
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#index-2020-07
///
/// `GET /admin/api/2020-07/application_credits.json`
Future<ApiResult<void, Never>> deprecated202007GetApplicationCredits({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/application_credits.json',
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
/// Creates an application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#create-2020-07
///
/// `POST /admin/api/2020-07/application_credits.json`
Future<ApiResult<void, Never>> deprecated202007CreateApplicationCredits({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/application_credits.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#show-2020-07
///
/// `GET /admin/api/2020-07/application_credits/{application_credit_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetApplicationCreditsParamApplicationCreditId({required String applicationCreditId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/application_credits/${Uri.encodeComponent(applicationCreditId)}.json',
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
/// Retrieves all application credits
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#index-2020-10
///
/// `GET /admin/api/2020-10/application_credits.json`
Future<ApiResult<void, Never>> getApplicationCredits({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/application_credits.json',
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
/// Creates an application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#create-2020-10
///
/// `POST /admin/api/2020-10/application_credits.json`
Future<ApiResult<void, Never>> createApplicationCredits({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/application_credits.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#show-2020-10
///
/// `GET /admin/api/2020-10/application_credits/{application_credit_id}.json`
Future<ApiResult<void, Never>> getApplicationCreditsParamApplicationCreditId({required String applicationCreditId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/application_credits/${Uri.encodeComponent(applicationCreditId)}.json',
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
/// Retrieves all application credits
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#index-2021-01
///
/// `GET /admin/api/2021-01/application_credits.json`
Future<ApiResult<void, Never>> deprecated202101GetApplicationCredits({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/application_credits.json',
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
/// Creates an application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#create-2021-01
///
/// `POST /admin/api/2021-01/application_credits.json`
Future<ApiResult<void, Never>> deprecated202101CreateApplicationCredits({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/application_credits.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#show-2021-01
///
/// `GET /admin/api/2021-01/application_credits/{application_credit_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetApplicationCreditsParamApplicationCreditId({required String applicationCreditId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/application_credits/${Uri.encodeComponent(applicationCreditId)}.json',
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
/// Retrieves all application credits
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#index-unstable
///
/// `GET /admin/api/unstable/application_credits.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetApplicationCredits({dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/application_credits.json',
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
/// Creates an application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#create-unstable
///
/// `POST /admin/api/unstable/application_credits.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateApplicationCredits({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/application_credits.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single application credit
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/applicationcredit#show-unstable
///
/// `GET /admin/api/unstable/application_credits/{application_credit_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetApplicationCreditsParamApplicationCreditId({required String applicationCreditId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/application_credits/${Uri.encodeComponent(applicationCreditId)}.json',
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
/// Retrieves a list of recurring application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#index-2020-01
///
/// `GET /admin/api/2020-01/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202001GetRecurringApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/recurring_application_charges.json',
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
/// Creates a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#create-2020-01
///
/// `POST /admin/api/2020-01/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202001CreateRecurringApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/recurring_application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#show-2020-01
///
/// `GET /admin/api/2020-01/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
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
/// Cancels a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#destroy-2020-01
///
/// `DELETE /admin/api/2020-01/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202001DeleteRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// Activates a previously accepted recurring application charge. Recurring charges are now
/// immediately activated when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#activate-2020-01
///
/// `POST /admin/api/2020-01/recurring_application_charges/{recurring_application_charge_id}/activate.json`
Future<ApiResult<void, Never>> deprecated202001CreateRecurringApplicationChargesParamRecurringApplicationChargeIdActivate({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates the capped amount of an active recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#customize-2020-01
///
/// `PUT /admin/api/2020-01/recurring_application_charges/{recurring_application_charge_id}/customize.json`
Future<ApiResult<void, Never>> deprecated202001UpdateRecurringApplicationChargesParamRecurringApplicationChargeIdCustomize({required String recurringApplicationChargeId, int? recurringApplicationChargecappedAmount, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (recurringApplicationChargecappedAmount != null) queryParameters['recurring_application_charge[capped_amount]'] = recurringApplicationChargecappedAmount.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/customize.json',
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
/// Retrieves a list of recurring application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#index-2020-04
///
/// `GET /admin/api/2020-04/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202004GetRecurringApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/recurring_application_charges.json',
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
/// Creates a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#create-2020-04
///
/// `POST /admin/api/2020-04/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202004CreateRecurringApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/recurring_application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#show-2020-04
///
/// `GET /admin/api/2020-04/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
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
/// Cancels a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#destroy-2020-04
///
/// `DELETE /admin/api/2020-04/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202004DeleteRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-04/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// Activates a previously accepted recurring application charge. Recurring charges are now
/// immediately activated when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#activate-2020-04
///
/// `POST /admin/api/2020-04/recurring_application_charges/{recurring_application_charge_id}/activate.json`
Future<ApiResult<void, Never>> deprecated202004CreateRecurringApplicationChargesParamRecurringApplicationChargeIdActivate({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates the capped amount of an active recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#customize-2020-04
///
/// `PUT /admin/api/2020-04/recurring_application_charges/{recurring_application_charge_id}/customize.json`
Future<ApiResult<void, Never>> deprecated202004UpdateRecurringApplicationChargesParamRecurringApplicationChargeIdCustomize({required String recurringApplicationChargeId, int? recurringApplicationChargecappedAmount, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (recurringApplicationChargecappedAmount != null) queryParameters['recurring_application_charge[capped_amount]'] = recurringApplicationChargecappedAmount.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-04/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/customize.json',
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
/// Retrieves a list of recurring application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#index-2020-07
///
/// `GET /admin/api/2020-07/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202007GetRecurringApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/recurring_application_charges.json',
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
/// Creates a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#create-2020-07
///
/// `POST /admin/api/2020-07/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202007CreateRecurringApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/recurring_application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#show-2020-07
///
/// `GET /admin/api/2020-07/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
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
/// Cancels a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#destroy-2020-07
///
/// `DELETE /admin/api/2020-07/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202007DeleteRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-07/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// Activates a previously accepted recurring application charge. Recurring charges are now
/// immediately activated when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#activate-2020-07
///
/// `POST /admin/api/2020-07/recurring_application_charges/{recurring_application_charge_id}/activate.json`
Future<ApiResult<void, Never>> deprecated202007CreateRecurringApplicationChargesParamRecurringApplicationChargeIdActivate({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates the capped amount of an active recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#customize-2020-07
///
/// `PUT /admin/api/2020-07/recurring_application_charges/{recurring_application_charge_id}/customize.json`
Future<ApiResult<void, Never>> deprecated202007UpdateRecurringApplicationChargesParamRecurringApplicationChargeIdCustomize({required String recurringApplicationChargeId, int? recurringApplicationChargecappedAmount, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (recurringApplicationChargecappedAmount != null) queryParameters['recurring_application_charge[capped_amount]'] = recurringApplicationChargecappedAmount.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-07/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/customize.json',
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
/// Retrieves a list of recurring application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#index-2020-10
///
/// `GET /admin/api/2020-10/recurring_application_charges.json`
Future<ApiResult<void, Never>> getRecurringApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/recurring_application_charges.json',
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
/// Creates a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#create-2020-10
///
/// `POST /admin/api/2020-10/recurring_application_charges.json`
Future<ApiResult<void, Never>> createRecurringApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/recurring_application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#show-2020-10
///
/// `GET /admin/api/2020-10/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> getRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
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
/// Cancels a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#destroy-2020-10
///
/// `DELETE /admin/api/2020-10/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deleteRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-10/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Caution
///   This endpoint is no longer required and is deprecated as of
///   API version 2021-01.
/// 
/// Activates a previously accepted recurring application charge. Recurring charges are now
/// immediately activated when approved by a merchant.
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#activate-2020-10
///
/// `POST /admin/api/2020-10/recurring_application_charges/{recurring_application_charge_id}/activate.json`
Future<ApiResult<void, Never>> createRecurringApplicationChargesParamRecurringApplicationChargeIdActivate({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/activate.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates the capped amount of an active recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#customize-2020-10
///
/// `PUT /admin/api/2020-10/recurring_application_charges/{recurring_application_charge_id}/customize.json`
Future<ApiResult<void, Never>> updateRecurringApplicationChargesParamRecurringApplicationChargeIdCustomize({required String recurringApplicationChargeId, int? recurringApplicationChargecappedAmount, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (recurringApplicationChargecappedAmount != null) queryParameters['recurring_application_charge[capped_amount]'] = recurringApplicationChargecappedAmount.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-10/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/customize.json',
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
/// Retrieves a list of recurring application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#index-2021-01
///
/// `GET /admin/api/2021-01/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202101GetRecurringApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/recurring_application_charges.json',
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
/// Creates a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#create-2021-01
///
/// `POST /admin/api/2021-01/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecated202101CreateRecurringApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/recurring_application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#show-2021-01
///
/// `GET /admin/api/2021-01/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
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
/// Cancels a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#destroy-2021-01
///
/// `DELETE /admin/api/2021-01/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202101DeleteRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2021-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates the capped amount of an active recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#customize-2021-01
///
/// `PUT /admin/api/2021-01/recurring_application_charges/{recurring_application_charge_id}/customize.json`
Future<ApiResult<void, Never>> deprecated202101UpdateRecurringApplicationChargesParamRecurringApplicationChargeIdCustomize({required String recurringApplicationChargeId, int? recurringApplicationChargecappedAmount, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (recurringApplicationChargecappedAmount != null) queryParameters['recurring_application_charge[capped_amount]'] = recurringApplicationChargecappedAmount.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2021-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/customize.json',
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
/// Retrieves a list of recurring application charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#index-unstable
///
/// `GET /admin/api/unstable/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetRecurringApplicationCharges({dynamic sinceId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/recurring_application_charges.json',
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
/// Creates a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#create-unstable
///
/// `POST /admin/api/unstable/recurring_application_charges.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateRecurringApplicationCharges({dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/recurring_application_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#show-unstable
///
/// `GET /admin/api/unstable/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
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
/// Cancels a recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#destroy-unstable
///
/// `DELETE /admin/api/unstable/recurring_application_charges/{recurring_application_charge_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableDeleteRecurringApplicationChargesParamRecurringApplicationChargeId({required String recurringApplicationChargeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/unstable/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates the capped amount of an active recurring application charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/recurringapplicationcharge#customize-unstable
///
/// `PUT /admin/api/unstable/recurring_application_charges/{recurring_application_charge_id}/customize.json`
Future<ApiResult<void, Never>> deprecatedUnstableUpdateRecurringApplicationChargesParamRecurringApplicationChargeIdCustomize({required String recurringApplicationChargeId, int? recurringApplicationChargecappedAmount, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (recurringApplicationChargecappedAmount != null) queryParameters['recurring_application_charge[capped_amount]'] = recurringApplicationChargecappedAmount.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/unstable/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/customize.json',
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
/// Retrieves a list of usage charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#index-2020-01
///
/// `GET /admin/api/2020-01/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202001GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
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
/// Creates a usage charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#create-2020-01
///
/// `POST /admin/api/2020-01/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202001CreateRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#show-2020-01
///
/// `GET /admin/api/2020-01/recurring_application_charges/{recurring_application_charge_id}/usage_charges/{usage_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageChargesParamUsageChargeId({required String recurringApplicationChargeId, required String usageChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges/${Uri.encodeComponent(usageChargeId)}.json',
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
/// Retrieves a list of usage charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#index-2020-04
///
/// `GET /admin/api/2020-04/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202004GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
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
/// Creates a usage charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#create-2020-04
///
/// `POST /admin/api/2020-04/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202004CreateRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#show-2020-04
///
/// `GET /admin/api/2020-04/recurring_application_charges/{recurring_application_charge_id}/usage_charges/{usage_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageChargesParamUsageChargeId({required String recurringApplicationChargeId, required String usageChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges/${Uri.encodeComponent(usageChargeId)}.json',
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
/// Retrieves a list of usage charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#index-2020-07
///
/// `GET /admin/api/2020-07/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202007GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
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
/// Creates a usage charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#create-2020-07
///
/// `POST /admin/api/2020-07/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202007CreateRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#show-2020-07
///
/// `GET /admin/api/2020-07/recurring_application_charges/{recurring_application_charge_id}/usage_charges/{usage_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageChargesParamUsageChargeId({required String recurringApplicationChargeId, required String usageChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges/${Uri.encodeComponent(usageChargeId)}.json',
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
/// Retrieves a list of usage charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#index-2020-10
///
/// `GET /admin/api/2020-10/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> getRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
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
/// Creates a usage charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#create-2020-10
///
/// `POST /admin/api/2020-10/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> createRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#show-2020-10
///
/// `GET /admin/api/2020-10/recurring_application_charges/{recurring_application_charge_id}/usage_charges/{usage_charge_id}.json`
Future<ApiResult<void, Never>> getRecurringApplicationChargesParamRecurringApplicationChargeIdUsageChargesParamUsageChargeId({required String recurringApplicationChargeId, required String usageChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges/${Uri.encodeComponent(usageChargeId)}.json',
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
/// Retrieves a list of usage charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#index-2021-01
///
/// `GET /admin/api/2021-01/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202101GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
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
/// Creates a usage charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#create-2021-01
///
/// `POST /admin/api/2021-01/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecated202101CreateRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#show-2021-01
///
/// `GET /admin/api/2021-01/recurring_application_charges/{recurring_application_charge_id}/usage_charges/{usage_charge_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageChargesParamUsageChargeId({required String recurringApplicationChargeId, required String usageChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges/${Uri.encodeComponent(usageChargeId)}.json',
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
/// Retrieves a list of usage charges
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#index-unstable
///
/// `GET /admin/api/unstable/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
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
/// Creates a usage charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#create-unstable
///
/// `POST /admin/api/unstable/recurring_application_charges/{recurring_application_charge_id}/usage_charges.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateRecurringApplicationChargesParamRecurringApplicationChargeIdUsageCharges({required String recurringApplicationChargeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single charge
///
/// https://shopify.dev/docs/admin-api/rest/reference/billing/usagecharge#show-unstable
///
/// `GET /admin/api/unstable/recurring_application_charges/{recurring_application_charge_id}/usage_charges/{usage_charge_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetRecurringApplicationChargesParamRecurringApplicationChargeIdUsageChargesParamUsageChargeId({required String recurringApplicationChargeId, required String usageChargeId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/recurring_application_charges/${Uri.encodeComponent(recurringApplicationChargeId)}/usage_charges/${Uri.encodeComponent(usageChargeId)}.json',
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
