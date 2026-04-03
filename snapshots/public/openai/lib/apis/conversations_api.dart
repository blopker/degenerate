// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/conversation_item.dart';import '../models/conversation_item_list.dart';import '../models/conversation_resource.dart';import '../models/create_conversation_body.dart';import '../models/create_conversation_items_request.dart';import '../models/deleted_conversation_resource.dart';import '../models/include_enum.dart';import '../models/list_conversation_items_order.dart';import '../models/update_conversation_body.dart';/// ConversationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ConversationsApi with ApiExecutor {const ConversationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all items for a conversation with the given ID.
///
/// `GET /conversations/{conversation_id}/items`
Future<ApiResult<ConversationItemList, Never>> listConversationItems({required String conversationId, int? limit, ListConversationItemsOrder? order, String? after, List<IncludeEnum>? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (after != null) {
  queryParameters['after'] = after;
}
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/conversations/${Uri.encodeComponent(conversationId)}/items',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConversationItemList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create items in a conversation with the given ID.
///
/// `POST /conversations/{conversation_id}/items`
Future<ApiResult<ConversationItemList, Never>> createConversationItems({required String conversationId, List<IncludeEnum>? include, required CreateConversationItemsRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/conversations/${Uri.encodeComponent(conversationId)}/items',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConversationItemList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a single item from a conversation with the given IDs.
///
/// `GET /conversations/{conversation_id}/items/{item_id}`
Future<ApiResult<ConversationItem, Never>> getConversationItem({required String conversationId, required String itemId, List<IncludeEnum>? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include', value: item.toJson()));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/conversations/${Uri.encodeComponent(conversationId)}/items/${Uri.encodeComponent(itemId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConversationItem.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an item from a conversation with the given IDs.
///
/// `DELETE /conversations/{conversation_id}/items/{item_id}`
Future<ApiResult<ConversationResource, Never>> deleteConversationItem({required String conversationId, required String itemId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/conversations/${Uri.encodeComponent(conversationId)}/items/${Uri.encodeComponent(itemId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConversationResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a conversation.
///
/// `POST /conversations`
Future<ApiResult<ConversationResource, Never>> createConversation({CreateConversationBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/conversations',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConversationResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a conversation
///
/// `GET /conversations/{conversation_id}`
Future<ApiResult<ConversationResource, Never>> getConversation({required String conversationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/conversations/${Uri.encodeComponent(conversationId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConversationResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a conversation
///
/// `POST /conversations/{conversation_id}`
Future<ApiResult<ConversationResource, Never>> updateConversation({required String conversationId, UpdateConversationBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/conversations/${Uri.encodeComponent(conversationId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ConversationResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a conversation. Items in the conversation will not be deleted.
///
/// `DELETE /conversations/{conversation_id}`
Future<ApiResult<DeletedConversationResource, Never>> deleteConversation({required String conversationId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/conversations/${Uri.encodeComponent(conversationId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeletedConversationResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
