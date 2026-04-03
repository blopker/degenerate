// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/organization_shares_list_direction.dart';import '../models/organization_shares_list_order.dart';import '../models/resource_sharing_account_id.dart';import '../models/resource_sharing_create_share_recipient_request.dart';import '../models/resource_sharing_create_share_request.dart';import '../models/resource_sharing_create_share_resource_request.dart';import '../models/resource_sharing_organization_id.dart';import '../models/resource_sharing_recipient_id.dart';import '../models/resource_sharing_resource_id.dart';import '../models/resource_sharing_resource_status.dart';import '../models/resource_sharing_resource_type.dart';import '../models/resource_sharing_share_id.dart';import '../models/resource_sharing_share_kind.dart';import '../models/resource_sharing_share_object.dart';import '../models/resource_sharing_share_recipient_object.dart';import '../models/resource_sharing_share_resource_object.dart';import '../models/resource_sharing_share_status.dart';import '../models/resource_sharing_share_target_type.dart';import '../models/resource_sharing_update_share_request.dart';import '../models/resource_sharing_update_share_resource_request.dart';import '../models/response_common55_result.dart';import '../models/shares_list_direction.dart';import '../models/shares_list_order.dart';/// ResourceSharingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ResourceSharingApi with ApiExecutor {const ResourceSharingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List account shares
///
/// Lists all account shares.
///
/// `GET /accounts/{account_id}/shares`
Future<ApiResult<List<ResourceSharingShareObject>?, Never>> sharesList({required ResourceSharingAccountId accountId, ResourceSharingShareStatus? status, ResourceSharingShareKind? kind, ResourceSharingShareTargetType? targetType, List<ResourceSharingResourceType>? resourceTypes, SharesListOrder? order, SharesListDirection? direction, int? page, int? perPage, bool? includeResources, bool? includeRecipientCounts, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (kind != null) {
  queryParameters['kind'] = kind.toJson();
}
if (targetType != null) {
  queryParameters['target_type'] = targetType.toJson();
}
if (resourceTypes != null) {
for (final item in resourceTypes) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_types', value: item.toJson()));
}
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (includeResources != null) {
  queryParameters['include_resources'] = includeResources.toString();
}
if (includeRecipientCounts != null) {
  queryParameters['include_recipient_counts'] = includeRecipientCounts.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ResourceSharingShareObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a new share
///
/// Creates a new resource share for sharing Cloudflare resources with other accounts or organizations.
///
/// `POST /accounts/{account_id}/shares`
Future<ApiResult<ResponseCommon55Result?, Never>> shareCreate({required ResourceSharingAccountId accountId, required ResourceSharingCreateShareRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Get account share by ID
///
/// Fetches share by ID.
///
/// `GET /accounts/{account_id}/shares/{share_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> sharesGetById({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, bool? includeResources, bool? includeRecipientCounts, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (includeResources != null) {
  queryParameters['include_resources'] = includeResources.toString();
}
if (includeRecipientCounts != null) {
  queryParameters['include_recipient_counts'] = includeRecipientCounts.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Update a share
///
/// Updating is not immediate, an updated share object with a new status will be returned.
///
/// `PUT /accounts/{account_id}/shares/{share_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> shareUpdate({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingUpdateShareRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Delete a share
///
/// Deletion is not immediate, an updated share object with a new status will be returned.
///
/// `DELETE /accounts/{account_id}/shares/{share_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> shareDelete({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// List share recipients by share ID
///
/// List share recipients by share ID.
///
/// `GET /accounts/{account_id}/shares/{share_id}/recipients`
Future<ApiResult<List<ResourceSharingShareRecipientObject>?, Never>> shareRecipientsList({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, bool? includeResources, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (includeResources != null) {
  queryParameters['include_resources'] = includeResources.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/recipients',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ResourceSharingShareRecipientObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a new share recipient
///
/// Adds a recipient to a resource share, granting them access to the shared resources.
///
/// `POST /accounts/{account_id}/shares/{share_id}/recipients`
Future<ApiResult<ResponseCommon55Result?, Never>> shareRecipientCreate({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingCreateShareRecipientRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/recipients',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Update a share's recipients
///
/// Changes a share's recipients to match the given list. Returns an error if the share targets an organization.
///
/// `PUT /accounts/{account_id}/shares/{share_id}/recipients`
Future<ApiResult<void, Never>> shareRecipientsUpdate({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required List<ResourceSharingCreateShareRecipientRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/recipients',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Get share recipient by ID
///
/// Get share recipient by ID.
///
/// `GET /accounts/{account_id}/shares/{share_id}/recipients/{recipient_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> shareRecipientsGetById({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingRecipientId recipientId, bool? includeResources, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (includeResources != null) {
  queryParameters['include_resources'] = includeResources.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/recipients/${Uri.encodeComponent(recipientId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Delete a share recipient
///
/// Deletion is not immediate, an updated share recipient object with a new status will be returned.
///
/// `DELETE /accounts/{account_id}/shares/{share_id}/recipients/{recipient_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> shareRecipientDelete({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingRecipientId recipientId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/recipients/${Uri.encodeComponent(recipientId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// List share resources by share ID
///
/// List share resources by share ID.
///
/// `GET /accounts/{account_id}/shares/{share_id}/resources`
Future<ApiResult<List<ResourceSharingShareResourceObject>?, Never>> shareResourcesList({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, ResourceSharingResourceStatus? status, ResourceSharingResourceType? resourceType, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (resourceType != null) {
  queryParameters['resource_type'] = resourceType.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/resources',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ResourceSharingShareResourceObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a new share resource
///
/// Adds a resource to an existing share, making it available to share recipients.
///
/// `POST /accounts/{account_id}/shares/{share_id}/resources`
Future<ApiResult<ResponseCommon55Result?, Never>> shareResourceCreate({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingCreateShareResourceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/resources',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Get share resource by ID
///
/// Get share resource by ID.
///
/// `GET /accounts/{account_id}/shares/{share_id}/resources/{resource_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> shareResourcesGetById({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingResourceId resourceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/resources/${Uri.encodeComponent(resourceId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Update a share resource
///
/// Update is not immediate, an updated share resource object with a new status will be returned.
///
/// `PUT /accounts/{account_id}/shares/{share_id}/resources/{resource_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> shareResourceUpdate({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingResourceId resourceId, required ResourceSharingUpdateShareResourceRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/resources/${Uri.encodeComponent(resourceId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// Delete a share resource
///
/// Deletion is not immediate, an updated share resource object with a new status will be returned.
///
/// `DELETE /accounts/{account_id}/shares/{share_id}/resources/{resource_id}`
Future<ApiResult<ResponseCommon55Result?, Never>> shareResourceDelete({required ResourceSharingAccountId accountId, required ResourceSharingShareId shareId, required ResourceSharingResourceId resourceId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/shares/${Uri.encodeComponent(shareId.toString())}/resources/${Uri.encodeComponent(resourceId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,) : null;
  },
);
 } 
/// List organization shares
///
/// Lists all organization shares.
///
/// `GET /organizations/{organization_id}/shares`
Future<ApiResult<List<ResourceSharingShareObject>?, Never>> organizationSharesList({required ResourceSharingOrganizationId organizationId, ResourceSharingShareStatus? status, ResourceSharingShareKind? kind, ResourceSharingShareTargetType? targetType, List<ResourceSharingResourceType>? resourceTypes, OrganizationSharesListOrder? order, OrganizationSharesListDirection? direction, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (kind != null) {
  queryParameters['kind'] = kind.toJson();
}
if (targetType != null) {
  queryParameters['target_type'] = targetType.toJson();
}
if (resourceTypes != null) {
for (final item in resourceTypes) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_types', value: item.toJson()));
}
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organizations/${Uri.encodeComponent(organizationId.toString())}/shares',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => ResourceSharingShareObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
