// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// AnalyticsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AnalyticsApi with ApiExecutor {const AnalyticsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves a list of reports. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#index-2020-01
///
/// `GET /admin/api/2020-01/reports.json`
Future<ApiResult<void, Never>> deprecated202001GetReports({dynamic ids, dynamic limit, dynamic sinceId, dynamic updatedAtMin, dynamic updatedAtMax, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ids != null) queryParameters['ids'] = ids.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();
if (updatedAtMax != null) queryParameters['updated_at_max'] = updatedAtMax.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/reports.json',
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
/// Creates a new report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#create-2020-01
///
/// `POST /admin/api/2020-01/reports.json`
Future<ApiResult<void, Never>> deprecated202001CreateReports({dynamic name, dynamic shopifyQl, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name.toString();
if (shopifyQl != null) queryParameters['shopify_ql'] = shopifyQl.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-01/reports.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single report created by your app
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#show-2020-01
///
/// `GET /admin/api/2020-01/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202001GetReportsParamReportId({required String reportId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-01/reports/${Uri.encodeComponent(reportId)}.json',
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
/// Updates a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#update-2020-01
///
/// `PUT /admin/api/2020-01/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202001UpdateReportsParamReportId({required String reportId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-01/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#destroy-2020-01
///
/// `DELETE /admin/api/2020-01/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202001DeleteReportsParamReportId({required String reportId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-01/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of reports. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#index-2020-04
///
/// `GET /admin/api/2020-04/reports.json`
Future<ApiResult<void, Never>> deprecated202004GetReports({dynamic ids, dynamic limit, dynamic sinceId, dynamic updatedAtMin, dynamic updatedAtMax, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ids != null) queryParameters['ids'] = ids.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();
if (updatedAtMax != null) queryParameters['updated_at_max'] = updatedAtMax.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/reports.json',
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
/// Creates a new report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#create-2020-04
///
/// `POST /admin/api/2020-04/reports.json`
Future<ApiResult<void, Never>> deprecated202004CreateReports({dynamic name, dynamic shopifyQl, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name.toString();
if (shopifyQl != null) queryParameters['shopify_ql'] = shopifyQl.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-04/reports.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single report created by your app
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#show-2020-04
///
/// `GET /admin/api/2020-04/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202004GetReportsParamReportId({required String reportId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-04/reports/${Uri.encodeComponent(reportId)}.json',
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
/// Updates a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#update-2020-04
///
/// `PUT /admin/api/2020-04/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202004UpdateReportsParamReportId({required String reportId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-04/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#destroy-2020-04
///
/// `DELETE /admin/api/2020-04/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202004DeleteReportsParamReportId({required String reportId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-04/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of reports. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#index-2020-07
///
/// `GET /admin/api/2020-07/reports.json`
Future<ApiResult<void, Never>> deprecated202007GetReports({dynamic ids, dynamic limit, dynamic sinceId, dynamic updatedAtMin, dynamic updatedAtMax, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ids != null) queryParameters['ids'] = ids.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();
if (updatedAtMax != null) queryParameters['updated_at_max'] = updatedAtMax.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/reports.json',
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
/// Creates a new report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#create-2020-07
///
/// `POST /admin/api/2020-07/reports.json`
Future<ApiResult<void, Never>> deprecated202007CreateReports({dynamic name, dynamic shopifyQl, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name.toString();
if (shopifyQl != null) queryParameters['shopify_ql'] = shopifyQl.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-07/reports.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single report created by your app
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#show-2020-07
///
/// `GET /admin/api/2020-07/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202007GetReportsParamReportId({required String reportId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-07/reports/${Uri.encodeComponent(reportId)}.json',
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
/// Updates a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#update-2020-07
///
/// `PUT /admin/api/2020-07/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202007UpdateReportsParamReportId({required String reportId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-07/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#destroy-2020-07
///
/// `DELETE /admin/api/2020-07/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202007DeleteReportsParamReportId({required String reportId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-07/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of reports. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#index-2020-10
///
/// `GET /admin/api/2020-10/reports.json`
Future<ApiResult<void, Never>> getReports({dynamic ids, dynamic limit, dynamic sinceId, dynamic updatedAtMin, dynamic updatedAtMax, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ids != null) queryParameters['ids'] = ids.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();
if (updatedAtMax != null) queryParameters['updated_at_max'] = updatedAtMax.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/reports.json',
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
/// Creates a new report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#create-2020-10
///
/// `POST /admin/api/2020-10/reports.json`
Future<ApiResult<void, Never>> createReports({dynamic name, dynamic shopifyQl, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name.toString();
if (shopifyQl != null) queryParameters['shopify_ql'] = shopifyQl.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2020-10/reports.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single report created by your app
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#show-2020-10
///
/// `GET /admin/api/2020-10/reports/{report_id}.json`
Future<ApiResult<void, Never>> getReportsParamReportId({required String reportId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2020-10/reports/${Uri.encodeComponent(reportId)}.json',
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
/// Updates a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#update-2020-10
///
/// `PUT /admin/api/2020-10/reports/{report_id}.json`
Future<ApiResult<void, Never>> updateReportsParamReportId({required String reportId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2020-10/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#destroy-2020-10
///
/// `DELETE /admin/api/2020-10/reports/{report_id}.json`
Future<ApiResult<void, Never>> deleteReportsParamReportId({required String reportId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2020-10/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of reports. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#index-2021-01
///
/// `GET /admin/api/2021-01/reports.json`
Future<ApiResult<void, Never>> deprecated202101GetReports({dynamic ids, dynamic limit, dynamic sinceId, dynamic updatedAtMin, dynamic updatedAtMax, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ids != null) queryParameters['ids'] = ids.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();
if (updatedAtMax != null) queryParameters['updated_at_max'] = updatedAtMax.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/reports.json',
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
/// Creates a new report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#create-2021-01
///
/// `POST /admin/api/2021-01/reports.json`
Future<ApiResult<void, Never>> deprecated202101CreateReports({dynamic name, dynamic shopifyQl, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name.toString();
if (shopifyQl != null) queryParameters['shopify_ql'] = shopifyQl.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/2021-01/reports.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single report created by your app
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#show-2021-01
///
/// `GET /admin/api/2021-01/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202101GetReportsParamReportId({required String reportId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/2021-01/reports/${Uri.encodeComponent(reportId)}.json',
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
/// Updates a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#update-2021-01
///
/// `PUT /admin/api/2021-01/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202101UpdateReportsParamReportId({required String reportId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/2021-01/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#destroy-2021-01
///
/// `DELETE /admin/api/2021-01/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecated202101DeleteReportsParamReportId({required String reportId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/2021-01/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a list of reports. Note: As of version 2019-10, this endpoint implements pagination by using links that are provided in the response header. Sending the page parameter will return an error. To learn more, see Making requests to paginated REST Admin API endpoints.
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#index-unstable
///
/// `GET /admin/api/unstable/reports.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetReports({dynamic ids, dynamic limit, dynamic sinceId, dynamic updatedAtMin, dynamic updatedAtMax, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ids != null) queryParameters['ids'] = ids.toString();
if (limit != null) queryParameters['limit'] = limit.toString();
if (sinceId != null) queryParameters['since_id'] = sinceId.toString();
if (updatedAtMin != null) queryParameters['updated_at_min'] = updatedAtMin.toString();
if (updatedAtMax != null) queryParameters['updated_at_max'] = updatedAtMax.toString();
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/reports.json',
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
/// Creates a new report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#create-unstable
///
/// `POST /admin/api/unstable/reports.json`
Future<ApiResult<void, Never>> deprecatedUnstableCreateReports({dynamic name, dynamic shopifyQl, dynamic body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name.toString();
if (shopifyQl != null) queryParameters['shopify_ql'] = shopifyQl.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/admin/api/unstable/reports.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieves a single report created by your app
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#show-unstable
///
/// `GET /admin/api/unstable/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableGetReportsParamReportId({required String reportId, dynamic fields, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) queryParameters['fields'] = fields.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/admin/api/unstable/reports/${Uri.encodeComponent(reportId)}.json',
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
/// Updates a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#update-unstable
///
/// `PUT /admin/api/unstable/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableUpdateReportsParamReportId({required String reportId, dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/admin/api/unstable/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Deletes a report
///
/// https://shopify.dev/docs/admin-api/rest/reference/analytics/report#destroy-unstable
///
/// `DELETE /admin/api/unstable/reports/{report_id}.json`
Future<ApiResult<void, Never>> deprecatedUnstableDeleteReportsParamReportId({required String reportId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/admin/api/unstable/reports/${Uri.encodeComponent(reportId)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
