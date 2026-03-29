// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_skill_body.dart';import '../models/create_skill_version_body.dart';import '../models/deleted_skill_resource.dart';import '../models/deleted_skill_version_resource.dart';import '../models/order_enum.dart';import '../models/set_default_skill_version_body.dart';import '../models/skill_list_resource.dart';import '../models/skill_resource.dart';import '../models/skill_version_list_resource.dart';import '../models/skill_version_resource.dart';/// SkillsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SkillsApi with ApiExecutor {const SkillsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all skills for the current project.
///
/// `GET /skills`
Future<ApiResult<SkillListResource, Never>> listSkills({int? limit, OrderEnum? order, String? after, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/skills',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SkillListResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new skill.
///
/// `POST /skills`
Future<ApiResult<SkillResource, Never>> createSkill({CreateSkillBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/skills',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SkillResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a skill by its ID.
///
/// `GET /skills/{skill_id}`
Future<ApiResult<SkillResource, Never>> getSkill({required String skillId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/skills/${Uri.encodeComponent(skillId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SkillResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update the default version pointer for a skill.
///
/// `POST /skills/{skill_id}`
Future<ApiResult<SkillResource, Never>> updateSkillDefaultVersion({required String skillId, SetDefaultSkillVersionBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/skills/${Uri.encodeComponent(skillId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SkillResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a skill by its ID.
///
/// `DELETE /skills/{skill_id}`
Future<ApiResult<DeletedSkillResource, Never>> deleteSkill({required String skillId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/skills/${Uri.encodeComponent(skillId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeletedSkillResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Download a skill zip bundle by its ID.
///
/// `GET /skills/{skill_id}/content`
Future<ApiResult<String, Never>> getSkillContent({required String skillId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/skills/${Uri.encodeComponent(skillId)}/content',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
);
 } 
/// List skill versions for a skill.
///
/// `GET /skills/{skill_id}/versions`
Future<ApiResult<SkillVersionListResource, Never>> listSkillVersions({required String skillId, int? limit, OrderEnum? order, String? after, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/skills/${Uri.encodeComponent(skillId)}/versions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SkillVersionListResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new immutable skill version.
///
/// `POST /skills/{skill_id}/versions`
Future<ApiResult<SkillVersionResource, Never>> createSkillVersion({required String skillId, CreateSkillVersionBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/skills/${Uri.encodeComponent(skillId)}/versions',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SkillVersionResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a specific skill version.
///
/// `GET /skills/{skill_id}/versions/{version}`
Future<ApiResult<SkillVersionResource, Never>> getSkillVersion({required String skillId, required String version, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/skills/${Uri.encodeComponent(skillId)}/versions/${Uri.encodeComponent(version)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SkillVersionResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a skill version.
///
/// `DELETE /skills/{skill_id}/versions/{version}`
Future<ApiResult<DeletedSkillVersionResource, Never>> deleteSkillVersion({required String skillId, required String version, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/skills/${Uri.encodeComponent(skillId)}/versions/${Uri.encodeComponent(version)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeletedSkillVersionResource.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Download a skill version zip bundle.
///
/// `GET /skills/{skill_id}/versions/{version}/content`
Future<ApiResult<String, Never>> getSkillVersionContent({required String skillId, required String version, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/skills/${Uri.encodeComponent(skillId)}/versions/${Uri.encodeComponent(version)}/content',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
);
 } 
 }
