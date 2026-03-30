// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/resource_tagging_access_application_id.dart';import '../models/resource_tagging_account_resource_type.dart';import '../models/resource_tagging_delete_tags_request_account_level.dart';import '../models/resource_tagging_delete_tags_request_zone_level.dart';import '../models/resource_tagging_identifier.dart';import '../models/resource_tagging_resource_id.dart';import '../models/resource_tagging_resource_type.dart';import '../models/resource_tagging_set_tags_request_account_level.dart';import '../models/resource_tagging_set_tags_request_zone_level.dart';import '../models/resource_tagging_tagged_resource_object.dart';import '../models/resource_tagging_worker_id.dart';import '../models/resource_tagging_zone_resource_type.dart';import '../models/response_common_failure59.dart';/// ResourceTaggingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ResourceTaggingApi with ApiExecutor {const ResourceTaggingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get tags for an account-level resource
///
/// Retrieves tags for a specific account-level resource.
///
/// `GET /accounts/{account_id}/tags`
Future<ApiResult<ResourceTaggingTaggedResourceObject?, Never>> tagsGet({required ResourceTaggingIdentifier accountId, required ResourceTaggingResourceId resourceId, required ResourceTaggingAccountResourceType resourceType, ResourceTaggingWorkerId? workerId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['resource_id'] = resourceId.toString();
queryParameters['resource_type'] = resourceType.toJson();
if (workerId != null) {
  queryParameters['worker_id'] = workerId.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/tags',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResourceTaggingTaggedResourceObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Set tags for an account-level resource
///
/// Creates or updates tags for a specific account-level resource.
///
/// `PUT /accounts/{account_id}/tags`
Future<ApiResult<ResourceTaggingTaggedResourceObject?, ResponseCommonFailure59>> tagsSet({required ResourceTaggingIdentifier accountId, String? ifMatch, required ResourceTaggingSetTagsRequestAccountLevel body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (ifMatch != null) {
  headers['If-Match'] = ifMatch;
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/tags',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResourceTaggingTaggedResourceObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete tags from an account-level resource
///
/// Removes all tags from a specific account-level resource.
///
/// `DELETE /accounts/{account_id}/tags`
Future<ApiResult<void, ResponseCommonFailure59>> tagsDelete({required ResourceTaggingIdentifier accountId, String? ifMatch, required ResourceTaggingDeleteTagsRequestAccountLevel body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (ifMatch != null) {
  headers['If-Match'] = ifMatch;
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/tags',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ResponseCommonFailure59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List tag keys
///
/// Lists all distinct tag keys used across resources in an account.
///
/// `GET /accounts/{account_id}/tags/keys`
Future<ApiResult<List<String>?, Never>> tagsListKeys({required ResourceTaggingIdentifier accountId, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/tags/keys',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => e as String).toList();
  },
);
 } 
/// List tagged resources
///
/// Lists all tagged resources for an account.
///
/// `GET /accounts/{account_id}/tags/resources`
Future<ApiResult<List<ResourceTaggingTaggedResourceObject>?, Never>> tagsList({required ResourceTaggingIdentifier accountId, List<ResourceTaggingResourceType>? type, List<String>? tag, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (type != null) {
for (final item in type) {
  queryParametersList.add(ApiQueryParameter(name: 'type', value: item.toJson(), allowReserved: false));
}
}
if (tag != null) {
for (final item in tag) {
  queryParametersList.add(ApiQueryParameter(name: 'tag', value: item, allowReserved: false));
}
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/tags/resources',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ResourceTaggingTaggedResourceObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List tag values
///
/// Lists all distinct values for a given tag key, optionally filtered by resource type.
///
/// `GET /accounts/{account_id}/tags/values/{tag_key}`
Future<ApiResult<List<String>?, Never>> tagsListValues({required ResourceTaggingIdentifier accountId, required String tagKey, ResourceTaggingResourceType? type, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (type != null) {
  queryParameters['type'] = type.toJson();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/tags/values/${Uri.encodeComponent(tagKey)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => e as String).toList();
  },
);
 } 
/// Get tags for a zone-level resource
///
/// Retrieves tags for a specific zone-level resource.
///
/// `GET /zones/{zone_id}/tags`
Future<ApiResult<ResourceTaggingTaggedResourceObject?, Never>> tagsZoneGet({required ResourceTaggingIdentifier zoneId, required ResourceTaggingResourceId resourceId, required ResourceTaggingZoneResourceType resourceType, ResourceTaggingAccessApplicationId? accessApplicationId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['resource_id'] = resourceId.toString();
queryParameters['resource_type'] = resourceType.toJson();
if (accessApplicationId != null) {
  queryParameters['access_application_id'] = accessApplicationId.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/tags',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResourceTaggingTaggedResourceObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Set tags for a zone-level resource
///
/// Creates or updates tags for a specific zone-level resource. Replaces all existing tags for the resource.
///
/// `PUT /zones/{zone_id}/tags`
Future<ApiResult<ResourceTaggingTaggedResourceObject?, ResponseCommonFailure59>> tagsZoneSet({required ResourceTaggingIdentifier zoneId, String? ifMatch, required ResourceTaggingSetTagsRequestZoneLevel body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (ifMatch != null) {
  headers['If-Match'] = ifMatch;
}

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/tags',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ResourceTaggingTaggedResourceObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete tags from a zone-level resource
///
/// Removes all tags from a specific zone-level resource.
///
/// `DELETE /zones/{zone_id}/tags`
Future<ApiResult<void, ResponseCommonFailure59>> tagsZoneDelete({required ResourceTaggingIdentifier zoneId, String? ifMatch, required ResourceTaggingDeleteTagsRequestZoneLevel body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (ifMatch != null) {
  headers['If-Match'] = ifMatch;
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/tags',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ResponseCommonFailure59.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
