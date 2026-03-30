// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudforce_one_request_asset_get_response.dart';import '../models/cloudforce_one_request_asset_list_response.dart';import '../models/cloudforce_one_request_asset_new_response.dart';import '../models/cloudforce_one_request_asset_update_response.dart';import '../models/cloudforce_one_request_constants_response.dart';import '../models/cloudforce_one_request_get_response.dart';import '../models/cloudforce_one_request_list_response.dart';import '../models/cloudforce_one_request_message_list_response.dart';import '../models/cloudforce_one_request_message_new_response.dart';import '../models/cloudforce_one_request_message_update_response.dart';import '../models/cloudforce_one_request_new_response.dart';import '../models/cloudforce_one_request_quota_response.dart';import '../models/cloudforce_one_request_types_response.dart';import '../models/cloudforce_one_request_update_response.dart';import '../models/cloudforce_one_requests_identifier.dart';import '../models/cloudforce_one_requests_request_asset_edit.dart';import '../models/cloudforce_one_requests_request_asset_list.dart';import '../models/cloudforce_one_requests_request_edit.dart';import '../models/cloudforce_one_requests_request_list.dart';import '../models/cloudforce_one_requests_request_message_edit.dart';import '../models/cloudforce_one_requests_request_message_list.dart';import '../models/cloudforce_one_requests_uuid.dart';import '../models/response_common14.dart';/// RequestForInformationRfiApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RequestForInformationRfiApi with ApiExecutor {const RequestForInformationRfiApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Requests
///
/// `POST /accounts/{account_id}/cloudforce-one/requests`
Future<ApiResult<CloudforceOneRequestListResponse, Never>> cloudforceOneRequestList({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsRequestList body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a Request
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/{request_id}`
Future<ApiResult<CloudforceOneRequestGetResponse, Never>> cloudforceOneRequestGet({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Request
///
/// Updating a request alters the request in the Cloudforce One queue. This API may be used to update any attributes of the request after the initial submission. Only fields that you choose to update need to be add to the request body.
///
/// `PUT /accounts/{account_id}/cloudforce-one/requests/{request_id}`
Future<ApiResult<CloudforceOneRequestUpdateResponse, Never>> cloudforceOneRequestUpdate({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Request
///
/// `DELETE /accounts/{account_id}/cloudforce-one/requests/{request_id}`
Future<ApiResult<ResponseCommon14, Never>> cloudforceOneRequestDelete({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}',
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
/// List Request Assets
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset`
Future<ApiResult<CloudforceOneRequestAssetListResponse, Never>> cloudforceOneRequestAssetList({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestAssetList body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestAssetListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a Request Asset
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`
Future<ApiResult<CloudforceOneRequestAssetGetResponse, Never>> cloudforceOneRequestAssetGet({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsUuid assetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/${Uri.encodeComponent(assetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestAssetGetResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Request Asset
///
/// `PUT /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`
Future<ApiResult<CloudforceOneRequestAssetUpdateResponse, Never>> cloudforceOneRequestAssetUpdate({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsUuid assetId, required CloudforceOneRequestsRequestAssetEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/${Uri.encodeComponent(assetId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestAssetUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Request Asset
///
/// `DELETE /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`
Future<ApiResult<ResponseCommon14, Never>> cloudforceOneRequestAssetDelete({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsUuid assetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/${Uri.encodeComponent(assetId.toString())}',
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
/// Create a New Request Asset
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/new`
Future<ApiResult<CloudforceOneRequestAssetNewResponse, Never>> cloudforceOneRequestAssetNew({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestAssetEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/new',
  headers: headers,
  body: [
    if (body.source case final source$?)
      ApiMultipartField.text('source', source$.toJson().toString()),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestAssetNewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Request Messages
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/message`
Future<ApiResult<CloudforceOneRequestMessageListResponse, Never>> cloudforceOneRequestMessageList({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestMessageList body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestMessageListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Request Message
///
/// `PUT /accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`
Future<ApiResult<CloudforceOneRequestMessageUpdateResponse, Never>> cloudforceOneRequestMessageUpdate({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required int messageId, required CloudforceOneRequestsRequestMessageEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message/${Uri.encodeComponent(messageId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestMessageUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Request Message
///
/// `DELETE /accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`
Future<ApiResult<ResponseCommon14, Never>> cloudforceOneRequestMessageDelete({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required int messageId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message/${Uri.encodeComponent(messageId.toString())}',
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
/// Create a New Request Message
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/message/new`
Future<ApiResult<CloudforceOneRequestMessageNewResponse, Never>> cloudforceOneRequestMessageNew({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestMessageEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message/new',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestMessageNewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Request Priority, Status, and TLP constants
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/constants`
Future<ApiResult<CloudforceOneRequestConstantsResponse, Never>> cloudforceOneRequestConstants({required CloudforceOneRequestsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/constants',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestConstantsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a New Request.
///
/// Creating a request adds the request into the Cloudforce One queue for analysis. In addition to the content, a short title, type, priority, and releasability should be provided. If one is not provided, a default will be assigned.
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/new`
Future<ApiResult<CloudforceOneRequestNewResponse, Never>> cloudforceOneRequestNew({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsRequestEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/new',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestNewResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Request Quota
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/quota`
Future<ApiResult<CloudforceOneRequestQuotaResponse, Never>> cloudforceOneRequestQuota({required CloudforceOneRequestsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/quota',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestQuotaResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Request Types
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/types`
Future<ApiResult<CloudforceOneRequestTypesResponse, Never>> cloudforceOneRequestTypes({required CloudforceOneRequestsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/types',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CloudforceOneRequestTypesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
