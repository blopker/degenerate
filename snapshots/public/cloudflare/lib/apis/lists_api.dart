// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/lists_account_id.dart';import '../models/lists_create_a_list_request.dart';import '../models/lists_delete_list_items_request.dart';import '../models/lists_item.dart';import '../models/lists_item_id.dart';import '../models/lists_items_update_request_collection2.dart';import '../models/lists_list.dart';import '../models/lists_list_id.dart';import '../models/lists_list_item_asn_object.dart';import '../models/lists_list_item_hostname_object.dart';import '../models/lists_list_item_ip_object.dart';import '../models/lists_list_item_redirect_object.dart';import '../models/lists_lists_async_response_result.dart';import '../models/lists_operation_id.dart';import '../models/lists_update_a_list_request.dart';import '../models/response_common41_result.dart';/// ListsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ListsApi with ApiExecutor {const ListsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get lists
///
/// Fetches all lists in the account.
///
/// `GET /accounts/{account_id}/rules/lists`
Future<ApiResult<List<ListsList>?, Never>> listsGetLists({required ListsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ListsList.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a list
///
/// Creates a new list of the specified kind.
///
/// `POST /accounts/{account_id}/rules/lists`
Future<ApiResult<ResponseCommon41Result, Never>> listsCreateAList({required ListsAccountId accountId, required ListsCreateAListRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),);
  },
);
 } 
/// Get a list
///
/// Fetches the details of a list.
///
/// `GET /accounts/{account_id}/rules/lists/{list_id}`
Future<ApiResult<ResponseCommon41Result, Never>> listsGetAList({required ListsListId listId, required ListsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),);
  },
);
 } 
/// Update a list
///
/// Updates the description of a list.
///
/// `PUT /accounts/{account_id}/rules/lists/{list_id}`
Future<ApiResult<ResponseCommon41Result, Never>> listsUpdateAList({required ListsListId listId, required ListsAccountId accountId, required ListsUpdateAListRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),);
  },
);
 } 
/// Delete a list
///
/// Deletes a specific list and all its items.
///
/// `DELETE /accounts/{account_id}/rules/lists/{list_id}`
Future<ApiResult<ResponseCommon41Result, Never>> listsDeleteAList({required ListsListId listId, required ListsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),);
  },
);
 } 
/// Get list items
///
/// Fetches all the items in the list.
///
/// `GET /accounts/{account_id}/rules/lists/{list_id}/items`
Future<ApiResult<List<ListsItem>?, Never>> listsGetListItems({required ListsListId listId, required ListsAccountId accountId, String? cursor, int? perPage, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}/items',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => OneOf4.parse(e, fromA: (v) => ListsListItemIpObject.fromJson(v as Map<String, dynamic>), fromB: (v) => ListsListItemHostnameObject.fromJson(v as Map<String, dynamic>), fromC: (v) => ListsListItemRedirectObject.fromJson(v as Map<String, dynamic>), fromD: (v) => ListsListItemAsnObject.fromJson(v as Map<String, dynamic>),)).toList();
  },
);
 } 
/// Create list items
///
/// Appends new items to the list.
/// 
/// This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.
/// 
/// There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.
///
/// `POST /accounts/{account_id}/rules/lists/{list_id}/items`
Future<ApiResult<ListsListsAsyncResponseResult?, Never>> listsCreateListItems({required ListsListId listId, required ListsAccountId accountId, required List<ListsItemsUpdateRequestCollection2> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}/items',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ListsListsAsyncResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update all list items
///
/// Removes all existing items from the list and adds the provided items to the list.
/// 
/// This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.
/// 
/// There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.
///
/// `PUT /accounts/{account_id}/rules/lists/{list_id}/items`
Future<ApiResult<ListsListsAsyncResponseResult?, Never>> listsUpdateAllListItems({required ListsListId listId, required ListsAccountId accountId, required List<ListsItemsUpdateRequestCollection2> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}/items',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ListsListsAsyncResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete list items
///
/// Removes one or more items from a list.
/// 
/// This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.
/// 
/// There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.
///
/// `DELETE /accounts/{account_id}/rules/lists/{list_id}/items`
Future<ApiResult<ListsListsAsyncResponseResult?, Never>> listsDeleteListItems({required ListsListId listId, required ListsAccountId accountId, required ListsDeleteListItemsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}/items',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ListsListsAsyncResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a list item
///
/// Fetches a list item in the list.
///
/// `GET /accounts/{account_id}/rules/lists/{list_id}/items/{item_id}`
Future<ApiResult<ResponseCommon41Result, Never>> listsGetAListItem({required ListsItemId itemId, required ListsListId listId, required ListsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/${Uri.encodeComponent(listId.toString())}/items/${Uri.encodeComponent(itemId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),);
  },
);
 } 
/// Get bulk operation status
///
/// Gets the current status of an asynchronous operation on a list.
/// 
/// The `status` property can have one of the following values: `pending`, `running`, `completed`, or `failed`. If the status is `failed`, the `error` property will contain a message describing the error.
///
/// `GET /accounts/{account_id}/rules/lists/bulk_operations/{operation_id}`
Future<ApiResult<ResponseCommon41Result, Never>> listsGetBulkOperationStatus({required ListsOperationId operationId, required ListsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rules/lists/bulk_operations/${Uri.encodeComponent(operationId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf2.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => (v as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),);
  },
);
 } 
 }
