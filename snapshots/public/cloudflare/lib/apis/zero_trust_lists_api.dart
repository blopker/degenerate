// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_items2.dart';import '../models/zero_trust_gateway_lists.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';import '../models/zero_trust_gateway_schemas_type.dart';import '../models/zero_trust_gateway_schemas_uuid.dart';import '../models/zero_trust_gateway_single_response_with_list_items_result.dart';import '../models/zero_trust_lists_create_zero_trust_list_request.dart';import '../models/zero_trust_lists_create_zero_trust_list_response4xx.dart';import '../models/zero_trust_lists_delete_zero_trust_list_response4xx.dart';import '../models/zero_trust_lists_list_zero_trust_lists_response4xx.dart';import '../models/zero_trust_lists_patch_zero_trust_list_request.dart';import '../models/zero_trust_lists_patch_zero_trust_list_response4xx.dart';import '../models/zero_trust_lists_update_zero_trust_list_request.dart';import '../models/zero_trust_lists_update_zero_trust_list_response4xx.dart';import '../models/zero_trust_lists_zero_trust_list_details_response4xx.dart';import '../models/zero_trust_lists_zero_trust_list_items_response4xx.dart';/// ZeroTrustListsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustListsApi with ApiExecutor {const ZeroTrustListsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Zero Trust lists
///
/// Fetch all Zero Trust lists for an account.
///
/// `GET /accounts/{account_id}/gateway/lists`
Future<ApiResult<List<ZeroTrustGatewayLists>?, ZeroTrustListsListZeroTrustListsResponse4xx>> zeroTrustListsListZeroTrustLists({required ZeroTrustGatewaySchemasIdentifier accountId, ZeroTrustGatewaySchemasType? type, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (type != null) {
  queryParameters['type'] = type.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => ZeroTrustGatewayLists.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustListsListZeroTrustListsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Create Zero Trust list
///
/// Creates a new Zero Trust list.
///
/// `POST /accounts/{account_id}/gateway/lists`
Future<ApiResult<ZeroTrustGatewaySingleResponseWithListItemsResult?, ZeroTrustListsCreateZeroTrustListResponse4xx>> zeroTrustListsCreateZeroTrustList({required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustListsCreateZeroTrustListRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewaySingleResponseWithListItemsResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustListsCreateZeroTrustListResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get Zero Trust list details
///
/// Fetch a single Zero Trust list.
///
/// `GET /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<ZeroTrustGatewayLists?, ZeroTrustListsZeroTrustListDetailsResponse4xx>> zeroTrustListsZeroTrustListDetails({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayLists.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustListsZeroTrustListDetailsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Update Zero Trust list
///
/// Updates a configured Zero Trust list. Skips updating list items if not included in the payload. A non empty list items will overwrite the existing list.
///
/// `PUT /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<ZeroTrustGatewayLists?, ZeroTrustListsUpdateZeroTrustListResponse4xx>> zeroTrustListsUpdateZeroTrustList({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustListsUpdateZeroTrustListRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayLists.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustListsUpdateZeroTrustListResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Patch Zero Trust list.
///
/// Appends or removes an item from a configured Zero Trust list.
///
/// `PATCH /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<ZeroTrustGatewayLists?, ZeroTrustListsPatchZeroTrustListResponse4xx>> zeroTrustListsPatchZeroTrustList({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustListsPatchZeroTrustListRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? ZeroTrustGatewayLists.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustListsPatchZeroTrustListResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete Zero Trust list
///
/// Deletes a Zero Trust list.
///
/// `DELETE /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<Map<String, dynamic>?, ZeroTrustListsDeleteZeroTrustListResponse4xx>> zeroTrustListsDeleteZeroTrustList({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustListsDeleteZeroTrustListResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get Zero Trust list items
///
/// Fetch all items in a single Zero Trust list.
///
/// `GET /accounts/{account_id}/gateway/lists/{list_id}/items`
Future<ApiResult<List<List<ZeroTrustGatewayItems2>>?, ZeroTrustListsZeroTrustListItemsResponse4xx>> zeroTrustListsZeroTrustListItems({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}/items',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => ZeroTrustGatewayItems2.fromJson(e as Map<String, dynamic>)).toList()).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ZeroTrustListsZeroTrustListItemsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
