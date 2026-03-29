// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// DiscountsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DiscountsApi with ApiExecutor {const DiscountsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve a list of discount codes. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#index-2020-01
///
/// `GET /admin/api/2020-01/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202001GetPriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#create-2020-01
///
/// `POST /admin/api/2020-01/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202001CreatePriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#show-2020-01
///
/// `GET /admin/api/2020-01/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetPriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#update-2020-01
///
/// `PUT /admin/api/2020-01/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202001UpdatePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#destroy-2020-01
///
/// `DELETE /admin/api/2020-01/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202001DeletePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the location of a discount code.
///           The discount code's location is returned in the location header, not in the DiscountCode object itself.
///             Depending on your HTTP client, the location of the discount code might follow the location header automatically.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#lookup-2020-01
///
/// `GET /admin/api/2020-01/discount_codes/lookup.json`
Future<ApiResult<void, Never>> deprecated202001GetDiscountCodesLookup({int? code, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (code != null) {
  queryParameters['code'] = code.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/discount_codes/lookup.json',
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
/// Creates a discount code creation job.
///           The batch endpoint can be used to asynchronously create up to 100 discount codes in a single request. It
///           enqueues and returns a discount_code_creation object that can be monitored for completion.
///           Response fields that are specific to the batch endpoint include:
/// 
///             status: The state of the discount code creation job. Possible values are:
/// 
///                 queued: The job is acknowledged, but not started.
///                 running: The job is in process.
///                 completed: The job has finished.
/// 
///             codes_count: The number of discount codes to create.
///             imported_count: The number of discount codes created successfully.
///             failed_count: The number of discount codes that were not created successfully. Unsuccessful attempts will retry up to three times.
///             logs: A report that specifies when no discount codes were created because the provided data was invalid. Example responses:
/// 
///                 "Price rule target selection can't be blank"
///                 "Price rule allocation method can't be blank"
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_create-2020-01
///
/// `POST /admin/api/2020-01/price_rules/{price_rule_id}/batch.json`
Future<ApiResult<void, Never>> deprecated202001CreatePriceRulesParamPriceRuleIdBatch({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/batch.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a discount code creation job
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_show-2020-01
///
/// `GET /admin/api/2020-01/price_rules/{price_rule_id}/batch/{batch_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetPriceRulesParamPriceRuleIdBatchParamBatchId({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of discount codes for a discount code creation job.
///           Discount codes that have been successfully created include a populated id field. Discount codes that
///           encountered errors during the creation process include a populated errors field.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_discount_codes_index-2020-01
///
/// `GET /admin/api/2020-01/price_rules/{price_rule_id}/batch/{batch_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202001GetPriceRulesParamPriceRuleIdBatchParamBatchIdDiscountCodes({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of discount codes. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#index-2020-04
///
/// `GET /admin/api/2020-04/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202004GetPriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#create-2020-04
///
/// `POST /admin/api/2020-04/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202004CreatePriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#show-2020-04
///
/// `GET /admin/api/2020-04/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetPriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#update-2020-04
///
/// `PUT /admin/api/2020-04/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202004UpdatePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#destroy-2020-04
///
/// `DELETE /admin/api/2020-04/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202004DeletePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the location of a discount code.
///           The discount code's location is returned in the location header, not in the DiscountCode object itself.
///             Depending on your HTTP client, the location of the discount code might follow the location header automatically.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#lookup-2020-04
///
/// `GET /admin/api/2020-04/discount_codes/lookup.json`
Future<ApiResult<void, Never>> deprecated202004GetDiscountCodesLookup({int? code, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (code != null) {
  queryParameters['code'] = code.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/discount_codes/lookup.json',
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
/// Creates a discount code creation job.
///           The batch endpoint can be used to asynchronously create up to 100 discount codes in a single request. It
///           enqueues and returns a discount_code_creation object that can be monitored for completion.
///           Response fields that are specific to the batch endpoint include:
/// 
///             status: The state of the discount code creation job. Possible values are:
/// 
///                 queued: The job is acknowledged, but not started.
///                 running: The job is in process.
///                 completed: The job has finished.
/// 
///             codes_count: The number of discount codes to create.
///             imported_count: The number of discount codes created successfully.
///             failed_count: The number of discount codes that were not created successfully. Unsuccessful attempts will retry up to three times.
///             logs: A report that specifies when no discount codes were created because the provided data was invalid. Example responses:
/// 
///                 "Price rule target selection can't be blank"
///                 "Price rule allocation method can't be blank"
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_create-2020-04
///
/// `POST /admin/api/2020-04/price_rules/{price_rule_id}/batch.json`
Future<ApiResult<void, Never>> deprecated202004CreatePriceRulesParamPriceRuleIdBatch({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/batch.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a discount code creation job
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_show-2020-04
///
/// `GET /admin/api/2020-04/price_rules/{price_rule_id}/batch/{batch_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetPriceRulesParamPriceRuleIdBatchParamBatchId({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of discount codes for a discount code creation job.
///           Discount codes that have been successfully created include a populated id field. Discount codes that
///           encountered errors during the creation process include a populated errors field.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_discount_codes_index-2020-04
///
/// `GET /admin/api/2020-04/price_rules/{price_rule_id}/batch/{batch_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202004GetPriceRulesParamPriceRuleIdBatchParamBatchIdDiscountCodes({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of discount codes. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#index-2020-07
///
/// `GET /admin/api/2020-07/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202007GetPriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#create-2020-07
///
/// `POST /admin/api/2020-07/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202007CreatePriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#show-2020-07
///
/// `GET /admin/api/2020-07/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetPriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#update-2020-07
///
/// `PUT /admin/api/2020-07/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202007UpdatePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#destroy-2020-07
///
/// `DELETE /admin/api/2020-07/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202007DeletePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the location of a discount code.
///           The discount code's location is returned in the location header, not in the DiscountCode object itself.
///             Depending on your HTTP client, the location of the discount code might follow the location header automatically.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#lookup-2020-07
///
/// `GET /admin/api/2020-07/discount_codes/lookup.json`
Future<ApiResult<void, Never>> deprecated202007GetDiscountCodesLookup({int? code, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (code != null) {
  queryParameters['code'] = code.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/discount_codes/lookup.json',
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
/// Creates a discount code creation job.
///           The batch endpoint can be used to asynchronously create up to 100 discount codes in a single request. It
///           enqueues and returns a discount_code_creation object that can be monitored for completion.
///           Response fields that are specific to the batch endpoint include:
/// 
///             status: The state of the discount code creation job. Possible values are:
/// 
///                 queued: The job is acknowledged, but not started.
///                 running: The job is in process.
///                 completed: The job has finished.
/// 
///             codes_count: The number of discount codes to create.
///             imported_count: The number of discount codes created successfully.
///             failed_count: The number of discount codes that were not created successfully. Unsuccessful attempts will retry up to three times.
///             logs: A report that specifies when no discount codes were created because the provided data was invalid. Example responses:
/// 
///                 "Price rule target selection can't be blank"
///                 "Price rule allocation method can't be blank"
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_create-2020-07
///
/// `POST /admin/api/2020-07/price_rules/{price_rule_id}/batch.json`
Future<ApiResult<void, Never>> deprecated202007CreatePriceRulesParamPriceRuleIdBatch({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/batch.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a discount code creation job
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_show-2020-07
///
/// `GET /admin/api/2020-07/price_rules/{price_rule_id}/batch/{batch_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetPriceRulesParamPriceRuleIdBatchParamBatchId({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of discount codes for a discount code creation job.
///           Discount codes that have been successfully created include a populated id field. Discount codes that
///           encountered errors during the creation process include a populated errors field.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_discount_codes_index-2020-07
///
/// `GET /admin/api/2020-07/price_rules/{price_rule_id}/batch/{batch_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202007GetPriceRulesParamPriceRuleIdBatchParamBatchIdDiscountCodes({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of discount codes. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#index-2020-10
///
/// `GET /admin/api/2020-10/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> getPriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#create-2020-10
///
/// `POST /admin/api/2020-10/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> createPriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#show-2020-10
///
/// `GET /admin/api/2020-10/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> getPriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#update-2020-10
///
/// `PUT /admin/api/2020-10/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> updatePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#destroy-2020-10
///
/// `DELETE /admin/api/2020-10/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deletePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the location of a discount code.
///           The discount code's location is returned in the location header, not in the DiscountCode object itself.
///             Depending on your HTTP client, the location of the discount code might follow the location header automatically.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#lookup-2020-10
///
/// `GET /admin/api/2020-10/discount_codes/lookup.json`
Future<ApiResult<void, Never>> getDiscountCodesLookup({int? code, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (code != null) {
  queryParameters['code'] = code.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/discount_codes/lookup.json',
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
/// Creates a discount code creation job.
///           The batch endpoint can be used to asynchronously create up to 100 discount codes in a single request. It
///           enqueues and returns a discount_code_creation object that can be monitored for completion.
///           Response fields that are specific to the batch endpoint include:
/// 
///             status: The state of the discount code creation job. Possible values are:
/// 
///                 queued: The job is acknowledged, but not started.
///                 running: The job is in process.
///                 completed: The job has finished.
/// 
///             codes_count: The number of discount codes to create.
///             imported_count: The number of discount codes created successfully.
///             failed_count: The number of discount codes that were not created successfully. Unsuccessful attempts will retry up to three times.
///             logs: A report that specifies when no discount codes were created because the provided data was invalid. Example responses:
/// 
///                 "Price rule target selection can't be blank"
///                 "Price rule allocation method can't be blank"
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_create-2020-10
///
/// `POST /admin/api/2020-10/price_rules/{price_rule_id}/batch.json`
Future<ApiResult<void, Never>> createPriceRulesParamPriceRuleIdBatch({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/batch.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a discount code creation job
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_show-2020-10
///
/// `GET /admin/api/2020-10/price_rules/{price_rule_id}/batch/{batch_id}.json`
Future<ApiResult<void, Never>> getPriceRulesParamPriceRuleIdBatchParamBatchId({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of discount codes for a discount code creation job.
///           Discount codes that have been successfully created include a populated id field. Discount codes that
///           encountered errors during the creation process include a populated errors field.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_discount_codes_index-2020-10
///
/// `GET /admin/api/2020-10/price_rules/{price_rule_id}/batch/{batch_id}/discount_codes.json`
Future<ApiResult<void, Never>> getPriceRulesParamPriceRuleIdBatchParamBatchIdDiscountCodes({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of discount codes. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#index-2021-01
///
/// `GET /admin/api/2021-01/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202101GetPriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#create-2021-01
///
/// `POST /admin/api/2021-01/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202101CreatePriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#show-2021-01
///
/// `GET /admin/api/2021-01/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetPriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#update-2021-01
///
/// `PUT /admin/api/2021-01/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202101UpdatePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#destroy-2021-01
///
/// `DELETE /admin/api/2021-01/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecated202101DeletePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the location of a discount code.
///           The discount code's location is returned in the location header, not in the DiscountCode object itself.
///             Depending on your HTTP client, the location of the discount code might follow the location header automatically.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#lookup-2021-01
///
/// `GET /admin/api/2021-01/discount_codes/lookup.json`
Future<ApiResult<void, Never>> deprecated202101GetDiscountCodesLookup({int? code, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (code != null) {
  queryParameters['code'] = code.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/discount_codes/lookup.json',
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
/// Creates a discount code creation job.
///           The batch endpoint can be used to asynchronously create up to 100 discount codes in a single request. It
///           enqueues and returns a discount_code_creation object that can be monitored for completion.
///           Response fields that are specific to the batch endpoint include:
/// 
///             status: The state of the discount code creation job. Possible values are:
/// 
///                 queued: The job is acknowledged, but not started.
///                 running: The job is in process.
///                 completed: The job has finished.
/// 
///             codes_count: The number of discount codes to create.
///             imported_count: The number of discount codes created successfully.
///             failed_count: The number of discount codes that were not created successfully. Unsuccessful attempts will retry up to three times.
///             logs: A report that specifies when no discount codes were created because the provided data was invalid. Example responses:
/// 
///                 "Price rule target selection can't be blank"
///                 "Price rule allocation method can't be blank"
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_create-2021-01
///
/// `POST /admin/api/2021-01/price_rules/{price_rule_id}/batch.json`
Future<ApiResult<void, Never>> deprecated202101CreatePriceRulesParamPriceRuleIdBatch({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/batch.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a discount code creation job
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_show-2021-01
///
/// `GET /admin/api/2021-01/price_rules/{price_rule_id}/batch/{batch_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetPriceRulesParamPriceRuleIdBatchParamBatchId({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of discount codes for a discount code creation job.
///           Discount codes that have been successfully created include a populated id field. Discount codes that
///           encountered errors during the creation process include a populated errors field.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_discount_codes_index-2021-01
///
/// `GET /admin/api/2021-01/price_rules/{price_rule_id}/batch/{batch_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecated202101GetPriceRulesParamPriceRuleIdBatchParamBatchIdDiscountCodes({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of discount codes. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#index-unstable
///
/// `GET /admin/api/unstable/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetPriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Creates a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#create-unstable
///
/// `POST /admin/api/unstable/price_rules/{price_rule_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreatePriceRulesParamPriceRuleIdDiscountCodes({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#show-unstable
///
/// `GET /admin/api/unstable/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetPriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Updates an existing discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#update-unstable
///
/// `PUT /admin/api/unstable/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableUpdatePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a discount code
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#destroy-unstable
///
/// `DELETE /admin/api/unstable/price_rules/{price_rule_id}/discount_codes/{discount_code_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableDeletePriceRulesParamPriceRuleIdDiscountCodesParamDiscountCodeId({required String priceRuleId, required String discountCodeId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/discount_codes/${Uri.encodeComponent(discountCodeId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves the location of a discount code.
///           The discount code's location is returned in the location header, not in the DiscountCode object itself.
///             Depending on your HTTP client, the location of the discount code might follow the location header automatically.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#lookup-unstable
///
/// `GET /admin/api/unstable/discount_codes/lookup.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetDiscountCodesLookup({int? code, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (code != null) {
  queryParameters['code'] = code.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/discount_codes/lookup.json',
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
/// Creates a discount code creation job.
///           The batch endpoint can be used to asynchronously create up to 100 discount codes in a single request. It
///           enqueues and returns a discount_code_creation object that can be monitored for completion.
///           Response fields that are specific to the batch endpoint include:
/// 
///             status: The state of the discount code creation job. Possible values are:
/// 
///                 queued: The job is acknowledged, but not started.
///                 running: The job is in process.
///                 completed: The job has finished.
/// 
///             codes_count: The number of discount codes to create.
///             imported_count: The number of discount codes created successfully.
///             failed_count: The number of discount codes that were not created successfully. Unsuccessful attempts will retry up to three times.
///             logs: A report that specifies when no discount codes were created because the provided data was invalid. Example responses:
/// 
///                 "Price rule target selection can't be blank"
///                 "Price rule allocation method can't be blank"
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_create-unstable
///
/// `POST /admin/api/unstable/price_rules/{price_rule_id}/batch.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreatePriceRulesParamPriceRuleIdBatch({required String priceRuleId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/batch.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a discount code creation job
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_show-unstable
///
/// `GET /admin/api/unstable/price_rules/{price_rule_id}/batch/{batch_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetPriceRulesParamPriceRuleIdBatchParamBatchId({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of discount codes for a discount code creation job.
///           Discount codes that have been successfully created include a populated id field. Discount codes that
///           encountered errors during the creation process include a populated errors field.
///
/// https://shopify.dev/docs/admin-api/rest/reference/discounts/discountcode#batch_discount_codes_index-unstable
///
/// `GET /admin/api/unstable/price_rules/{price_rule_id}/batch/{batch_id}/discount_codes.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetPriceRulesParamPriceRuleIdBatchParamBatchIdDiscountCodes({required String priceRuleId, required String batchId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/price_rules/${Uri.encodeComponent(priceRuleId)}/batch/${Uri.encodeComponent(batchId)}/discount_codes.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
