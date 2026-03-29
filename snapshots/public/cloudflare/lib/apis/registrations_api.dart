// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_registration_response.dart';import '../models/get_registration_response.dart';import '../models/list_registrations_response.dart';import '../models/list_registrations_sort_by.dart';import '../models/list_registrations_sort_order.dart';import '../models/list_registrations_status.dart';import '../models/revoke_registrations_response.dart';import '../models/unrevoke_registrations_response.dart';/// RegistrationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RegistrationsApi with ApiExecutor {const RegistrationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List registrations
///
/// Lists WARP registrations.
///
/// `GET /accounts/{account_id}/devices/registrations`
Future<ApiResult<ListRegistrationsResponse, Never>> listRegistrations({required String accountId, List<String>? userId, String? seenAfter, String? seenBefore, ListRegistrationsStatus? status, int? perPage, String? search, ListRegistrationsSortBy? sortBy, ListRegistrationsSortOrder? sortOrder, String? cursor, List<String>? id, String? deviceId, String? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (userId != null) {
for (final item in userId) {
  queryParametersList.add(ApiQueryParameter(name: 'user.id', value: item, allowReserved: false));
}
}
if (seenAfter != null) {
  queryParameters['seen_after'] = seenAfter;
}
if (seenBefore != null) {
  queryParameters['seen_before'] = seenBefore;
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (sortBy != null) {
  queryParameters['sort_by'] = sortBy.toJson();
}
if (sortOrder != null) {
  queryParameters['sort_order'] = sortOrder.toJson();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}
if (id != null) {
for (final item in id) {
  queryParametersList.add(ApiQueryParameter(name: 'id', value: item, allowReserved: false));
}
}
if (deviceId != null) {
  queryParameters['device.id'] = deviceId;
}
if (include != null) {
  queryParameters['include'] = include;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/registrations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListRegistrationsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get registration
///
/// Fetches a single WARP registration.
///
/// `GET /accounts/{account_id}/devices/registrations/{registration_id}`
Future<ApiResult<GetRegistrationResponse, Never>> getRegistration({required String registrationId, required String accountId, String? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
  queryParameters['include'] = include;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/registrations/${Uri.encodeComponent(registrationId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetRegistrationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete registration
///
/// Deletes a WARP registration.
///
/// `DELETE /accounts/{account_id}/devices/registrations/{registration_id}`
Future<ApiResult<DeleteRegistrationResponse, Never>> deleteRegistration({required String registrationId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/registrations/${Uri.encodeComponent(registrationId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteRegistrationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Revoke registrations
///
/// Revokes a list of WARP registrations.
///
/// `POST /accounts/{account_id}/devices/registrations/revoke`
Future<ApiResult<RevokeRegistrationsResponse, Never>> revokeRegistrations({required String accountId, required List<String> id, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
for (final item in id) {
  queryParametersList.add(ApiQueryParameter(name: 'id', value: item, allowReserved: false));
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/registrations/revoke',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RevokeRegistrationsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Unrevoke registrations
///
/// Unrevokes a list of WARP registrations.
///
/// `POST /accounts/{account_id}/devices/registrations/unrevoke`
Future<ApiResult<UnrevokeRegistrationsResponse, Never>> unrevokeRegistrations({required String accountId, required List<String> id, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
for (final item in id) {
  queryParametersList.add(ApiQueryParameter(name: 'id', value: item, allowReserved: false));
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/devices/registrations/unrevoke',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UnrevokeRegistrationsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
