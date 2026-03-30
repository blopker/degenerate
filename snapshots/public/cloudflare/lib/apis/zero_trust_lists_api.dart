// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_empty_response.dart';import '../models/zero_trust_gateway_list_item_response_collection.dart';import '../models/zero_trust_gateway_list_single_response.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';import '../models/zero_trust_gateway_schemas_response_collection.dart';import '../models/zero_trust_gateway_schemas_type.dart';import '../models/zero_trust_gateway_schemas_uuid.dart';import '../models/zero_trust_gateway_single_response_with_list_items.dart';import '../models/zero_trust_lists_create_zero_trust_list_request.dart';import '../models/zero_trust_lists_patch_zero_trust_list_request.dart';import '../models/zero_trust_lists_update_zero_trust_list_request.dart';/// ZeroTrustListsApi operations.
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
Future<ApiResult<ZeroTrustGatewaySchemasResponseCollection, Never>> zeroTrustListsListZeroTrustLists({required ZeroTrustGatewaySchemasIdentifier accountId, ZeroTrustGatewaySchemasType? type, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewaySchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Zero Trust list
///
/// Creates a new Zero Trust list.
///
/// `POST /accounts/{account_id}/gateway/lists`
Future<ApiResult<ZeroTrustGatewaySingleResponseWithListItems, Never>> zeroTrustListsCreateZeroTrustList({required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustListsCreateZeroTrustListRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewaySingleResponseWithListItems.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Zero Trust list details
///
/// Fetch a single Zero Trust list.
///
/// `GET /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<ZeroTrustGatewayListSingleResponse, Never>> zeroTrustListsZeroTrustListDetails({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayListSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Zero Trust list
///
/// Updates a configured Zero Trust list. Skips updating list items if not included in the payload. A non empty list items will overwrite the existing list.
///
/// `PUT /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<ZeroTrustGatewayListSingleResponse, Never>> zeroTrustListsUpdateZeroTrustList({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustListsUpdateZeroTrustListRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayListSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Zero Trust list.
///
/// Appends or removes an item from a configured Zero Trust list.
///
/// `PATCH /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<ZeroTrustGatewayListSingleResponse, Never>> zeroTrustListsPatchZeroTrustList({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, required ZeroTrustListsPatchZeroTrustListRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayListSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Zero Trust list
///
/// Deletes a Zero Trust list.
///
/// `DELETE /accounts/{account_id}/gateway/lists/{list_id}`
Future<ApiResult<ZeroTrustGatewayEmptyResponse, Never>> zeroTrustListsDeleteZeroTrustList({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayEmptyResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Zero Trust list items
///
/// Fetch all items in a single Zero Trust list.
///
/// `GET /accounts/{account_id}/gateway/lists/{list_id}/items`
Future<ApiResult<ZeroTrustGatewayListItemResponseCollection, Never>> zeroTrustListsZeroTrustListItems({required ZeroTrustGatewaySchemasUuid listId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/lists/${Uri.encodeComponent(listId.toString())}/items',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayListItemResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
