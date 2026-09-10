// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudforce_one_requests_identifier.dart';import '../models/cloudforce_one_requests_quota.dart';import '../models/cloudforce_one_requests_request_asset_edit.dart';import '../models/cloudforce_one_requests_request_asset_item.dart';import '../models/cloudforce_one_requests_request_asset_list.dart';import '../models/cloudforce_one_requests_request_constants.dart';import '../models/cloudforce_one_requests_request_edit.dart';import '../models/cloudforce_one_requests_request_item.dart';import '../models/cloudforce_one_requests_request_list.dart';import '../models/cloudforce_one_requests_request_list_item.dart';import '../models/cloudforce_one_requests_request_message_edit.dart';import '../models/cloudforce_one_requests_request_message_item.dart';import '../models/cloudforce_one_requests_request_message_list.dart';import '../models/cloudforce_one_requests_uuid.dart';import '../models/response_common14.dart';import '../models/response_common_failure19.dart';/// RequestForInformationRfiApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RequestForInformationRfiApi with ApiExecutor {const RequestForInformationRfiApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Requests
///
/// `POST /accounts/{account_id}/cloudforce-one/requests`
Future<ApiResult<List<CloudforceOneRequestsRequestListItem>?, ResponseCommonFailure19>> cloudforceOneRequestList({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsRequestList body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsRequestListItem.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a Request
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/{request_id}`
Future<ApiResult<CloudforceOneRequestsRequestItem?, ResponseCommonFailure19>> cloudforceOneRequestGet({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestItem.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a Request
///
/// Updating a request alters the request in the Cloudforce One queue. This API may be used to update any attributes of the request after the initial submission. Only fields that you choose to update need to be add to the request body.
///
/// `PUT /accounts/{account_id}/cloudforce-one/requests/{request_id}`
Future<ApiResult<CloudforceOneRequestsRequestItem?, ResponseCommonFailure19>> cloudforceOneRequestUpdate({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestItem.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a Request
///
/// `DELETE /accounts/{account_id}/cloudforce-one/requests/{request_id}`
Future<ApiResult<ResponseCommon14, ResponseCommonFailure19>> cloudforceOneRequestDelete({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ResponseCommon14.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Request Assets
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset`
Future<ApiResult<List<CloudforceOneRequestsRequestAssetItem>?, ResponseCommonFailure19>> cloudforceOneRequestAssetList({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestAssetList body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsRequestAssetItem.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a Request Asset
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`
Future<ApiResult<List<CloudforceOneRequestsRequestAssetItem>?, ResponseCommonFailure19>> cloudforceOneRequestAssetGet({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsUuid assetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/${Uri.encodeComponent(assetId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsRequestAssetItem.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a Request Asset
///
/// `PUT /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`
Future<ApiResult<CloudforceOneRequestsRequestAssetItem?, ResponseCommonFailure19>> cloudforceOneRequestAssetUpdate({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsUuid assetId, required CloudforceOneRequestsRequestAssetEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/${Uri.encodeComponent(assetId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestAssetItem.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a Request Asset
///
/// `DELETE /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`
Future<ApiResult<ResponseCommon14, ResponseCommonFailure19>> cloudforceOneRequestAssetDelete({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsUuid assetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/${Uri.encodeComponent(assetId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ResponseCommon14.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a New Request Asset
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/new`
Future<ApiResult<CloudforceOneRequestsRequestAssetItem?, ResponseCommonFailure19>> cloudforceOneRequestAssetNew({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestAssetEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/asset/new',
  headers: headers,
  body: [
    if (body.source case final source$?)
      ApiMultipartField.text('source', source$.toJson()),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestAssetItem.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List Request Messages
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/message`
Future<ApiResult<List<CloudforceOneRequestsRequestMessageItem>?, ResponseCommonFailure19>> cloudforceOneRequestMessageList({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestMessageList body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => CloudforceOneRequestsRequestMessageItem.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a Request Message
///
/// `PUT /accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`
Future<ApiResult<CloudforceOneRequestsRequestMessageItem?, ResponseCommonFailure19>> cloudforceOneRequestMessageUpdate({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required int messageId, required CloudforceOneRequestsRequestMessageEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message/${Uri.encodeComponent(messageId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestMessageItem.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a Request Message
///
/// `DELETE /accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`
Future<ApiResult<ResponseCommon14, ResponseCommonFailure19>> cloudforceOneRequestMessageDelete({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required int messageId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message/${Uri.encodeComponent(messageId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ResponseCommon14.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a New Request Message
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/{request_id}/message/new`
Future<ApiResult<CloudforceOneRequestsRequestMessageItem?, ResponseCommonFailure19>> cloudforceOneRequestMessageNew({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsUuid requestId, required CloudforceOneRequestsRequestMessageEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/${Uri.encodeComponent(requestId.toString())}/message/new',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestMessageItem.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Request Priority, Status, and TLP constants
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/constants`
Future<ApiResult<CloudforceOneRequestsRequestConstants?, ResponseCommonFailure19>> cloudforceOneRequestConstants({required CloudforceOneRequestsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/constants',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestConstants.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a New Request.
///
/// Creating a request adds the request into the Cloudforce One queue for analysis. In addition to the content, a short title, type, priority, and releasability should be provided. If one is not provided, a default will be assigned.
///
/// `POST /accounts/{account_id}/cloudforce-one/requests/new`
Future<ApiResult<CloudforceOneRequestsRequestItem?, ResponseCommonFailure19>> cloudforceOneRequestNew({required CloudforceOneRequestsIdentifier accountId, required CloudforceOneRequestsRequestEdit body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/new',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsRequestItem.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Request Quota
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/quota`
Future<ApiResult<CloudforceOneRequestsQuota?, ResponseCommonFailure19>> cloudforceOneRequestQuota({required CloudforceOneRequestsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/quota',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? CloudforceOneRequestsQuota.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Request Types
///
/// `GET /accounts/{account_id}/cloudforce-one/requests/types`
Future<ApiResult<List<String>?, ResponseCommonFailure19>> cloudforceOneRequestTypes({required CloudforceOneRequestsIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/requests/types',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => e as String).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure19.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
