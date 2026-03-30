// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudforce_one_priority_get_response.dart';import '../models/cloudforce_one_priority_list_response.dart';import '../models/cloudforce_one_priority_new_response.dart';import '../models/cloudforce_one_priority_quota_response.dart';import '../models/cloudforce_one_priority_update_response.dart';import '../models/cloudforce_one_requests_identifier.dart';import '../models/cloudforce_one_requests_priority_edit.dart';import '../models/cloudforce_one_requests_priority_list.dart';import '../models/cloudforce_one_requests_uuid.dart';import '../models/response_common14.dart';/// PriorityIntelligenceRequirementsPirApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PriorityIntelligenceRequirementsPirApi with ApiExecutor {const PriorityIntelligenceRequirementsPirApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Priority Intelligence Requirements
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/priority`
Future<ApiResult<CloudforceOnePriorityListResponse, Never>> cloudforceOnePriorityList({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsPriorityList body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/priority',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOnePriorityListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a Priority Intelligence Requirement
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/priority/{priority_id}`
Future<ApiResult<CloudforceOnePriorityGetResponse, Never>> cloudforceOnePriorityGet({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid priorityId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/priority/${Uri.encodeComponent(priorityId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOnePriorityGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Priority Intelligence Requirement
///
/// `PUT /accounts/{account_id}/cloudforce-one/requests/priority/{priority_id}`
Future<ApiResult<CloudforceOnePriorityUpdateResponse, Never>> cloudforceOnePriorityUpdate({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid priorityId, required CloudforceOneRequestsPriorityEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/priority/${Uri.encodeComponent(priorityId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOnePriorityUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Priority Intelligence Requirement
///
/// `DELETE /accounts/{account_id}/cloudforce-one/requests/priority/{priority_id}`
Future<ApiResult<ResponseCommon14, Never>> cloudforceOnePriorityDelete({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid priorityId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/priority/${Uri.encodeComponent(priorityId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon14.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a New Priority Intelligence Requirement
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/priority/new`
Future<ApiResult<CloudforceOnePriorityNewResponse, Never>> cloudforceOnePriorityNew({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsPriorityEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/priority/new',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOnePriorityNewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Priority Intelligence Requirement Quota
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/priority/quota`
Future<ApiResult<CloudforceOnePriorityQuotaResponse, Never>> cloudforceOnePriorityQuota({required CloudforceOneRequestsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/priority/quota',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOnePriorityQuotaResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
