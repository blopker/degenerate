// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/alexandria_application.dart';import '../models/alexandria_create_application_request.dart';import '../models/alexandria_update_application_version_request.dart';import '../models/create_application_response4_xx.dart';import '../models/get_application_by_id_response4_xx.dart';import '../models/get_applications_response4_xx.dart';import '../models/update_application_version_response4_xx.dart';/// ApplicationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ApplicationsApi with ApiExecutor {const ApplicationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get  applications
///
/// Get applications with different filters.
///
/// `GET /accounts/{accountId}/resource-library/applications`
Future<ApiResult<List<AlexandriaApplication>?, GetApplicationsResponse4Xx>> getApplications({required String accountId, String? filter, int? limit, int? offset, String? orderBy, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (filter != null) {
  queryParameters['filter'] = filter;
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/applications',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => AlexandriaApplication.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetApplicationsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create application
///
/// Create application.
///
/// `POST /accounts/{accountId}/resource-library/applications`
Future<ApiResult<AlexandriaApplication?, CreateApplicationResponse4Xx>> createApplication({required String accountId, required AlexandriaCreateApplicationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/applications',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? AlexandriaApplication.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CreateApplicationResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get application By Id
///
/// Get application by ID.
///
/// `GET /accounts/{accountId}/resource-library/applications/{id}`
Future<ApiResult<AlexandriaApplication?, GetApplicationByIdResponse4Xx>> getApplicationById({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/applications/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? AlexandriaApplication.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetApplicationByIdResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update application version
///
/// Update application version.
///
/// `PATCH /accounts/{accountId}/resource-library/applications/{id}`
Future<ApiResult<AlexandriaApplication?, UpdateApplicationVersionResponse4Xx>> updateApplicationVersion({required String accountId, required String id, required AlexandriaUpdateApplicationVersionRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/applications/${Uri.encodeComponent(id)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? AlexandriaApplication.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateApplicationVersionResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
