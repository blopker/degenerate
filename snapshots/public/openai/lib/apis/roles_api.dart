// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/list_project_roles_order.dart';import '../models/list_roles_order.dart';import '../models/public_create_organization_role_body.dart';import '../models/public_role_list_resource.dart';import '../models/public_update_organization_role_body.dart';import '../models/role.dart';import '../models/role_deleted_resource.dart';/// RolesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RolesApi with ApiExecutor {const RolesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists the roles configured for the organization.
///
/// `GET /organization/roles`
Future<ApiResult<PublicRoleListResource, Never>> listRoles({int? limit, String? after, ListRolesOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
if (after != null) queryParameters['after'] = after;
if (order != null) queryParameters['order'] = order.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/roles',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PublicRoleListResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a custom role for the organization.
///
/// `POST /organization/roles`
Future<ApiResult<Role, Never>> createRole({required PublicCreateOrganizationRoleBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/roles',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Role.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates an existing organization role.
///
/// `POST /organization/roles/{role_id}`
Future<ApiResult<Role, Never>> updateRole({required String roleId, required PublicUpdateOrganizationRoleBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/roles/${Uri.encodeComponent(roleId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Role.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a custom role from the organization.
///
/// `DELETE /organization/roles/{role_id}`
Future<ApiResult<RoleDeletedResource, Never>> deleteRole({required String roleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/organization/roles/${Uri.encodeComponent(roleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RoleDeletedResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Lists the roles configured for a project.
///
/// `GET /projects/{project_id}/roles`
Future<ApiResult<PublicRoleListResource, Never>> listProjectRoles({required String projectId, int? limit, String? after, ListProjectRolesOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
if (after != null) queryParameters['after'] = after;
if (order != null) queryParameters['order'] = order.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/projects/${Uri.encodeComponent(projectId)}/roles',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PublicRoleListResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a custom role for a project.
///
/// `POST /projects/{project_id}/roles`
Future<ApiResult<Role, Never>> createProjectRole({required String projectId, required PublicCreateOrganizationRoleBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/projects/${Uri.encodeComponent(projectId)}/roles',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Role.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates an existing project role.
///
/// `POST /projects/{project_id}/roles/{role_id}`
Future<ApiResult<Role, Never>> updateProjectRole({required String projectId, required String roleId, required PublicUpdateOrganizationRoleBody body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/projects/${Uri.encodeComponent(projectId)}/roles/${Uri.encodeComponent(roleId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Role.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a custom role from a project.
///
/// `DELETE /projects/{project_id}/roles/{role_id}`
Future<ApiResult<RoleDeletedResource, Never>> deleteProjectRole({required String projectId, required String roleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/projects/${Uri.encodeComponent(projectId)}/roles/${Uri.encodeComponent(roleId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RoleDeletedResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
