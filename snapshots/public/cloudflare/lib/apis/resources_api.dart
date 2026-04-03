// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/mcn_account_id.dart';import '../models/mcn_bad_response.dart';import '../models/mcn_resource_details.dart';import '../models/mcn_resource_id.dart';import '../models/mcn_resource_type.dart';import '../models/mcn_resources_catalog_policy_preview_request.dart';import '../models/mcn_resources_catalog_policy_preview_response.dart';/// ResourcesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ResourcesApi with ApiExecutor {const ResourcesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Resources
///
/// List resources in the Resource Catalog (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/resources`
Future<ApiResult<List<McnResourceDetails>?, McnBadResponse>> resourcesCatalogList({required McnAccountId accountId, String? providerId, List<McnResourceType>? resourceType, List<McnResourceId>? resourceId, String? region, String? resourceGroup, bool? managed, List<String>? search, String? orderBy, bool? desc, int? perPage, int? page, bool? cloudflare, bool? v2, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (providerId != null) {
  queryParameters['provider_id'] = providerId;
}
if (resourceType != null) {
for (final item in resourceType) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_type', value: item.toJson()));
}
}
if (resourceId != null) {
for (final item in resourceId) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_id', value: item.toJson()));
}
}
if (region != null) {
  queryParameters['region'] = region;
}
if (resourceGroup != null) {
  queryParameters['resource_group'] = resourceGroup;
}
if (managed != null) {
  queryParameters['managed'] = managed.toString();
}
if (search != null) {
for (final item in search) {
  queryParametersList.add(ApiQueryParameter(name: 'search', value: item));
}
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy;
}
if (desc != null) {
  queryParameters['desc'] = desc.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (cloudflare != null) {
  queryParameters['cloudflare'] = cloudflare.toString();
}
if (v2 != null) {
  queryParameters['v2'] = v2.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/resources',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => McnResourceDetails.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read Resource
///
/// Read an resource from the Resource Catalog (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/resources/{resource_id}`
Future<ApiResult<McnResourceDetails?, McnBadResponse>> resourcesCatalogRead({required McnAccountId accountId, required McnResourceId resourceId, bool? v2, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (v2 != null) {
  queryParameters['v2'] = v2.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/resources/${Uri.encodeComponent(resourceId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnResourceDetails.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Export Resources
///
/// Export resources in the Resource Catalog as a JSON file (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/resources/export`
Future<ApiResult<Uint8List, McnBadResponse>> resourcesCatalogExport({required McnAccountId accountId, String? providerId, List<McnResourceType>? resourceType, List<McnResourceId>? resourceId, String? region, String? resourceGroup, List<String>? search, String? orderBy, bool? desc, bool? v2, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (providerId != null) {
  queryParameters['provider_id'] = providerId;
}
if (resourceType != null) {
for (final item in resourceType) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_type', value: item.toJson()));
}
}
if (resourceId != null) {
for (final item in resourceId) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_id', value: item.toJson()));
}
}
if (region != null) {
  queryParameters['region'] = region;
}
if (resourceGroup != null) {
  queryParameters['resource_group'] = resourceGroup;
}
if (search != null) {
for (final item in search) {
  queryParametersList.add(ApiQueryParameter(name: 'search', value: item));
}
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy;
}
if (desc != null) {
  queryParameters['desc'] = desc.toString();
}
if (v2 != null) {
  queryParameters['v2'] = v2.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/resources/export',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Uint8List.fromList(response.bodyBytes);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Preview Rego Query
///
/// Preview Rego query result against the latest resource catalog (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/resources/policy-preview`
Future<ApiResult<McnResourcesCatalogPolicyPreview?, McnBadResponse>> resourcesCatalogPolicyPreview({required McnAccountId accountId, required McnResourcesCatalogPolicyPreviewRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/resources/policy-preview',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnResourcesCatalogPolicyPreview.fromJson(json['result'] as String) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
