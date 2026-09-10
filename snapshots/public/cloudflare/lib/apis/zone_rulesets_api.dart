// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_zone_ruleset_request.dart';import '../models/create_zone_ruleset_response4_xx.dart';import '../models/create_zone_ruleset_response_result.dart';import '../models/create_zone_ruleset_rule_request.dart';import '../models/create_zone_ruleset_rule_response4_xx.dart';import '../models/create_zone_ruleset_rule_response_result.dart';import '../models/delete_zone_ruleset_response4_xx.dart';import '../models/delete_zone_ruleset_rule_response4_xx.dart';import '../models/delete_zone_ruleset_rule_response_result.dart';import '../models/delete_zone_ruleset_version_response4_xx.dart';import '../models/get_zone_entrypoint_ruleset_response4_xx.dart';import '../models/get_zone_entrypoint_ruleset_response_result.dart';import '../models/get_zone_entrypoint_ruleset_version_response4_xx.dart';import '../models/get_zone_entrypoint_ruleset_version_response_result.dart';import '../models/get_zone_ruleset_response4_xx.dart';import '../models/get_zone_ruleset_response_result.dart';import '../models/get_zone_ruleset_version_response4_xx.dart';import '../models/get_zone_ruleset_version_response_result.dart';import '../models/list_zone_entrypoint_ruleset_versions_response4_xx.dart';import '../models/list_zone_entrypoint_ruleset_versions_response_result.dart';import '../models/list_zone_ruleset_version_rules_by_tag_response4_xx.dart';import '../models/list_zone_ruleset_version_rules_by_tag_response_result.dart';import '../models/list_zone_ruleset_versions_response4_xx.dart';import '../models/list_zone_ruleset_versions_response_result.dart';import '../models/list_zone_rulesets_response4_xx.dart';import '../models/list_zone_rulesets_response_result.dart';import '../models/rulesets_cursor.dart';import '../models/rulesets_per_page.dart';import '../models/rulesets_rule_category.dart';import '../models/rulesets_rule_id.dart';import '../models/rulesets_ruleset_id.dart';import '../models/rulesets_ruleset_phase.dart';import '../models/rulesets_ruleset_version.dart';import '../models/rulesets_zone_id.dart';import '../models/update_zone_entrypoint_ruleset_request.dart';import '../models/update_zone_entrypoint_ruleset_response4_xx.dart';import '../models/update_zone_entrypoint_ruleset_response_result.dart';import '../models/update_zone_ruleset_request.dart';import '../models/update_zone_ruleset_response4_xx.dart';import '../models/update_zone_ruleset_response_result.dart';import '../models/update_zone_ruleset_rule_request.dart';import '../models/update_zone_ruleset_rule_response4_xx.dart';import '../models/update_zone_ruleset_rule_response_result.dart';/// ZoneRulesetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneRulesetsApi with ApiExecutor {const ZoneRulesetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List zone rulesets
///
/// Fetches all rulesets at the zone level.
///
/// `GET /zones/{zone_id}/rulesets`
Future<ApiResult<List<ListZoneRulesetsResponseResult>, ListZoneRulesetsResponse4Xx>> listZoneRulesets({required RulesetsZoneId zoneId, RulesetsCursor? cursor, RulesetsPerPage? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (cursor != null) {
  queryParameters['cursor'] = cursor.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => ListZoneRulesetsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListZoneRulesetsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a zone ruleset
///
/// Creates a ruleset at the zone level.
///
/// `POST /zones/{zone_id}/rulesets`
Future<ApiResult<CreateZoneRulesetResponseResult, CreateZoneRulesetResponse4Xx>> createZoneRuleset({required RulesetsZoneId zoneId, required CreateZoneRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return CreateZoneRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CreateZoneRulesetResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a zone ruleset
///
/// Fetches the latest version of a zone ruleset.
///
/// `GET /zones/{zone_id}/rulesets/{ruleset_id}`
Future<ApiResult<GetZoneRulesetResponseResult, GetZoneRulesetResponse4Xx>> getZoneRuleset({required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetZoneRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetZoneRulesetResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a zone ruleset
///
/// Updates a zone ruleset, creating a new version.
///
/// `PUT /zones/{zone_id}/rulesets/{ruleset_id}`
Future<ApiResult<UpdateZoneRulesetResponseResult, UpdateZoneRulesetResponse4Xx>> updateZoneRuleset({required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, required UpdateZoneRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return UpdateZoneRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateZoneRulesetResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a zone ruleset
///
/// Deletes all versions of an existing zone ruleset.
///
/// `DELETE /zones/{zone_id}/rulesets/{ruleset_id}`
Future<ApiResult<void, DeleteZoneRulesetResponse4Xx>> deleteZoneRuleset({required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeleteZoneRulesetResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create a zone ruleset rule
///
/// Adds a new rule to a zone ruleset. The rule will be added to the end of the existing list of rules in the ruleset by default.
///
/// `POST /zones/{zone_id}/rulesets/{ruleset_id}/rules`
Future<ApiResult<CreateZoneRulesetRuleResponseResult, CreateZoneRulesetRuleResponse4Xx>> createZoneRulesetRule({required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, required CreateZoneRulesetRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return CreateZoneRulesetRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CreateZoneRulesetRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a zone ruleset rule
///
/// Updates an existing rule in a zone ruleset.
///
/// `PATCH /zones/{zone_id}/rulesets/{ruleset_id}/rules/{rule_id}`
Future<ApiResult<UpdateZoneRulesetRuleResponseResult, UpdateZoneRulesetRuleResponse4Xx>> updateZoneRulesetRule({required RulesetsRuleId ruleId, required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, required UpdateZoneRulesetRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return UpdateZoneRulesetRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateZoneRulesetRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a zone ruleset rule
///
/// Deletes an existing rule from a zone ruleset.
///
/// `DELETE /zones/{zone_id}/rulesets/{ruleset_id}/rules/{rule_id}`
Future<ApiResult<DeleteZoneRulesetRuleResponseResult, DeleteZoneRulesetRuleResponse4Xx>> deleteZoneRulesetRule({required RulesetsRuleId ruleId, required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return DeleteZoneRulesetRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeleteZoneRulesetRuleResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List a zone ruleset's versions
///
/// Fetches the versions of a zone ruleset.
///
/// `GET /zones/{zone_id}/rulesets/{ruleset_id}/versions`
Future<ApiResult<List<ListZoneRulesetVersionsResponseResult>, ListZoneRulesetVersionsResponse4Xx>> listZoneRulesetVersions({required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => ListZoneRulesetVersionsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListZoneRulesetVersionsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a zone ruleset version
///
/// Fetches a specific version of a zone ruleset.
///
/// `GET /zones/{zone_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`
Future<ApiResult<GetZoneRulesetVersionResponseResult, GetZoneRulesetVersionResponse4Xx>> getZoneRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetZoneRulesetVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetZoneRulesetVersionResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a zone ruleset version
///
/// Deletes an existing version of a zone ruleset.
///
/// `DELETE /zones/{zone_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`
Future<ApiResult<void, DeleteZoneRulesetVersionResponse4Xx>> deleteZoneRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeleteZoneRulesetVersionResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List a zone ruleset version's rules by tag
///
/// Fetches the rules of a managed zone ruleset version for a given tag.
///
/// `GET /zones/{zone_id}/rulesets/{ruleset_id}/versions/{ruleset_version}/by_tag/{rule_tag}`
Future<ApiResult<ListZoneRulesetVersionRulesByTagResponseResult, ListZoneRulesetVersionRulesByTagResponse4Xx>> listZoneRulesetVersionRulesByTag({required RulesetsRuleCategory ruleTag, required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}/by_tag/${Uri.encodeComponent(ruleTag.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return ListZoneRulesetVersionRulesByTagResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListZoneRulesetVersionRulesByTagResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a zone entry point ruleset
///
/// Fetches the latest version of the zone entry point ruleset for a given phase.
///
/// `GET /zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint`
Future<ApiResult<GetZoneEntrypointRulesetResponseResult, GetZoneEntrypointRulesetResponse4Xx>> getZoneEntrypointRuleset({required RulesetsRulesetPhase rulesetPhase, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetZoneEntrypointRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetZoneEntrypointRulesetResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update a zone entry point ruleset
///
/// Updates a zone entry point ruleset, creating a new version.
///
/// `PUT /zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint`
Future<ApiResult<UpdateZoneEntrypointRulesetResponseResult, UpdateZoneEntrypointRulesetResponse4Xx>> updateZoneEntrypointRuleset({required RulesetsRulesetPhase rulesetPhase, required RulesetsZoneId zoneId, required UpdateZoneEntrypointRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return UpdateZoneEntrypointRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateZoneEntrypointRulesetResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List a zone entry point ruleset's versions
///
/// Fetches the versions of a zone entry point ruleset.
///
/// `GET /zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions`
Future<ApiResult<List<ListZoneEntrypointRulesetVersionsResponseResult>, ListZoneEntrypointRulesetVersionsResponse4Xx>> listZoneEntrypointRulesetVersions({required RulesetsRulesetPhase rulesetPhase, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint/versions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => ListZoneEntrypointRulesetVersionsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListZoneEntrypointRulesetVersionsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get a zone entry point ruleset version
///
/// Fetches a specific version of a zone entry point ruleset.
///
/// `GET /zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions/{ruleset_version}`
Future<ApiResult<GetZoneEntrypointRulesetVersionResponseResult, GetZoneEntrypointRulesetVersionResponse4Xx>> getZoneEntrypointRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetPhase rulesetPhase, required RulesetsZoneId zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetZoneEntrypointRulesetVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetZoneEntrypointRulesetVersionResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
