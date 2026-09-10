// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_account_ruleset_request.dart';import '../models/create_account_ruleset_response4xx.dart';import '../models/create_account_ruleset_response_result.dart';import '../models/create_account_ruleset_rule_request.dart';import '../models/create_account_ruleset_rule_response4xx.dart';import '../models/create_account_ruleset_rule_response_result.dart';import '../models/delete_account_ruleset_response4xx.dart';import '../models/delete_account_ruleset_rule_response4xx.dart';import '../models/delete_account_ruleset_rule_response_result.dart';import '../models/delete_account_ruleset_version_response4xx.dart';import '../models/get_account_entrypoint_ruleset_response4xx.dart';import '../models/get_account_entrypoint_ruleset_response_result.dart';import '../models/get_account_entrypoint_ruleset_version_response4xx.dart';import '../models/get_account_entrypoint_ruleset_version_response_result.dart';import '../models/get_account_ruleset_response4xx.dart';import '../models/get_account_ruleset_response_result.dart';import '../models/get_account_ruleset_version_response4xx.dart';import '../models/get_account_ruleset_version_response_result.dart';import '../models/list_account_entrypoint_ruleset_versions_response4xx.dart';import '../models/list_account_entrypoint_ruleset_versions_response_result.dart';import '../models/list_account_ruleset_version_rules_by_tag_response4xx.dart';import '../models/list_account_ruleset_version_rules_by_tag_response_result.dart';import '../models/list_account_ruleset_versions_response4xx.dart';import '../models/list_account_ruleset_versions_response_result.dart';import '../models/list_account_rulesets_response4xx.dart';import '../models/list_account_rulesets_response_result.dart';import '../models/rulesets_account_id.dart';import '../models/rulesets_cursor.dart';import '../models/rulesets_per_page.dart';import '../models/rulesets_rule_category.dart';import '../models/rulesets_rule_id.dart';import '../models/rulesets_ruleset_id.dart';import '../models/rulesets_ruleset_phase.dart';import '../models/rulesets_ruleset_version.dart';import '../models/update_account_entrypoint_ruleset_request.dart';import '../models/update_account_entrypoint_ruleset_response4xx.dart';import '../models/update_account_entrypoint_ruleset_response_result.dart';import '../models/update_account_ruleset_request.dart';import '../models/update_account_ruleset_response4xx.dart';import '../models/update_account_ruleset_response_result.dart';import '../models/update_account_ruleset_rule_request.dart';import '../models/update_account_ruleset_rule_response4xx.dart';import '../models/update_account_ruleset_rule_response_result.dart';/// AccountRulesetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountRulesetsApi with ApiExecutor {const AccountRulesetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List account rulesets
///
/// Fetches all rulesets at the account level.
///
/// `GET /accounts/{account_id}/rulesets`
Future<ApiResult<List<ListAccountRulesetsResponseResult>, ListAccountRulesetsResponse4xx>> listAccountRulesets({required RulesetsAccountId accountId, RulesetsCursor? cursor, RulesetsPerPage? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => ListAccountRulesetsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListAccountRulesetsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create an account ruleset
///
/// Creates a ruleset at the account level.
///
/// `POST /accounts/{account_id}/rulesets`
Future<ApiResult<CreateAccountRulesetResponseResult, CreateAccountRulesetResponse4xx>> createAccountRuleset({required RulesetsAccountId accountId, required CreateAccountRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return CreateAccountRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CreateAccountRulesetResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get an account ruleset
///
/// Fetches the latest version of an account ruleset.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}`
Future<ApiResult<GetAccountRulesetResponseResult, GetAccountRulesetResponse4xx>> getAccountRuleset({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetAccountRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetAccountRulesetResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update an account ruleset
///
/// Updates an account ruleset, creating a new version.
///
/// `PUT /accounts/{account_id}/rulesets/{ruleset_id}`
Future<ApiResult<UpdateAccountRulesetResponseResult, UpdateAccountRulesetResponse4xx>> updateAccountRuleset({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, required UpdateAccountRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return UpdateAccountRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateAccountRulesetResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete an account ruleset
///
/// Deletes all versions of an existing account ruleset.
///
/// `DELETE /accounts/{account_id}/rulesets/{ruleset_id}`
Future<ApiResult<void, DeleteAccountRulesetResponse4xx>> deleteAccountRuleset({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeleteAccountRulesetResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create an account ruleset rule
///
/// Adds a new rule to an account ruleset. The rule will be added to the end of the existing list of rules in the ruleset by default.
///
/// `POST /accounts/{account_id}/rulesets/{ruleset_id}/rules`
Future<ApiResult<CreateAccountRulesetRuleResponseResult, CreateAccountRulesetRuleResponse4xx>> createAccountRulesetRule({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, required CreateAccountRulesetRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return CreateAccountRulesetRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return CreateAccountRulesetRuleResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update an account ruleset rule
///
/// Updates an existing rule in an account ruleset.
///
/// `PATCH /accounts/{account_id}/rulesets/{ruleset_id}/rules/{rule_id}`
Future<ApiResult<UpdateAccountRulesetRuleResponseResult, UpdateAccountRulesetRuleResponse4xx>> updateAccountRulesetRule({required RulesetsRuleId ruleId, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, required UpdateAccountRulesetRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return UpdateAccountRulesetRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateAccountRulesetRuleResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete an account ruleset rule
///
/// Deletes an existing rule from an account ruleset.
///
/// `DELETE /accounts/{account_id}/rulesets/{ruleset_id}/rules/{rule_id}`
Future<ApiResult<DeleteAccountRulesetRuleResponseResult, DeleteAccountRulesetRuleResponse4xx>> deleteAccountRulesetRule({required RulesetsRuleId ruleId, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return DeleteAccountRulesetRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeleteAccountRulesetRuleResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List an account ruleset's versions
///
/// Fetches the versions of an account ruleset.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}/versions`
Future<ApiResult<List<ListAccountRulesetVersionsResponseResult>, ListAccountRulesetVersionsResponse4xx>> listAccountRulesetVersions({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => ListAccountRulesetVersionsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListAccountRulesetVersionsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get an account ruleset version
///
/// Fetches a specific version of an account ruleset.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`
Future<ApiResult<GetAccountRulesetVersionResponseResult, GetAccountRulesetVersionResponse4xx>> getAccountRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetAccountRulesetVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetAccountRulesetVersionResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete an account ruleset version
///
/// Deletes an existing version of an account ruleset.
///
/// `DELETE /accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`
Future<ApiResult<void, DeleteAccountRulesetVersionResponse4xx>> deleteAccountRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return DeleteAccountRulesetVersionResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List an account ruleset version's rules by tag
///
/// Fetches the rules of a managed account ruleset version for a given tag.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}/by_tag/{rule_tag}`
Future<ApiResult<ListAccountRulesetVersionRulesByTagResponseResult, ListAccountRulesetVersionRulesByTagResponse4xx>> listAccountRulesetVersionRulesByTag({required RulesetsRuleCategory ruleTag, required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}/by_tag/${Uri.encodeComponent(ruleTag.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return ListAccountRulesetVersionRulesByTagResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListAccountRulesetVersionRulesByTagResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get an account entry point ruleset
///
/// Fetches the latest version of the account entry point ruleset for a given phase.
///
/// `GET /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint`
Future<ApiResult<GetAccountEntrypointRulesetResponseResult, GetAccountEntrypointRulesetResponse4xx>> getAccountEntrypointRuleset({required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetAccountEntrypointRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetAccountEntrypointRulesetResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update an account entry point ruleset
///
/// Updates an account entry point ruleset, creating a new version.
///
/// `PUT /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint`
Future<ApiResult<UpdateAccountEntrypointRulesetResponseResult, UpdateAccountEntrypointRulesetResponse4xx>> updateAccountEntrypointRuleset({required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, required UpdateAccountEntrypointRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return UpdateAccountEntrypointRulesetResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateAccountEntrypointRulesetResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List an account entry point ruleset's versions
///
/// Fetches the versions of an account entry point ruleset.
///
/// `GET /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions`
Future<ApiResult<List<ListAccountEntrypointRulesetVersionsResponseResult>, ListAccountEntrypointRulesetVersionsResponse4xx>> listAccountEntrypointRulesetVersions({required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint/versions',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => ListAccountEntrypointRulesetVersionsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListAccountEntrypointRulesetVersionsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get an account entry point ruleset version
///
/// Fetches a specific version of an account entry point ruleset.
///
/// `GET /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions/{ruleset_version}`
Future<ApiResult<GetAccountEntrypointRulesetVersionResponseResult, GetAccountEntrypointRulesetVersionResponse4xx>> getAccountEntrypointRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.value)}/entrypoint/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return GetAccountEntrypointRulesetVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetAccountEntrypointRulesetVersionResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
