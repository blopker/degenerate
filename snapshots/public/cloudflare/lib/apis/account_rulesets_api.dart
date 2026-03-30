// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_account_ruleset_request.dart';import '../models/create_account_ruleset_rule_request.dart';import '../models/list_account_entrypoint_ruleset_versions_response.dart';import '../models/list_account_ruleset_versions_response.dart';import '../models/list_account_rulesets_response.dart';import '../models/rulesets_account_id.dart';import '../models/rulesets_cursor.dart';import '../models/rulesets_per_page.dart';import '../models/rulesets_response.dart';import '../models/rulesets_rule_category.dart';import '../models/rulesets_rule_id.dart';import '../models/rulesets_ruleset_id.dart';import '../models/rulesets_ruleset_phase.dart';import '../models/rulesets_ruleset_version.dart';import '../models/update_account_entrypoint_ruleset_request.dart';import '../models/update_account_ruleset_request.dart';import '../models/update_account_ruleset_rule_request.dart';/// AccountRulesetsApi operations.
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
Future<ApiResult<ListAccountRulesetsResponse, Never>> listAccountRulesets({required RulesetsAccountId accountId, RulesetsCursor? cursor, RulesetsPerPage? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return execute(
  request,
  onSuccess: (response) {
    return ListAccountRulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an account ruleset
///
/// Creates a ruleset at the account level.
///
/// `POST /accounts/{account_id}/rulesets`
Future<ApiResult<RulesetsResponse, Never>> createAccountRuleset({required RulesetsAccountId accountId, required CreateAccountRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an account ruleset
///
/// Fetches the latest version of an account ruleset.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}`
Future<ApiResult<RulesetsResponse, Never>> getAccountRuleset({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an account ruleset
///
/// Updates an account ruleset, creating a new version.
///
/// `PUT /accounts/{account_id}/rulesets/{ruleset_id}`
Future<ApiResult<RulesetsResponse, Never>> updateAccountRuleset({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, required UpdateAccountRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an account ruleset
///
/// Deletes all versions of an existing account ruleset.
///
/// `DELETE /accounts/{account_id}/rulesets/{ruleset_id}`
Future<ApiResult<void, Never>> deleteAccountRuleset({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Create an account ruleset rule
///
/// Adds a new rule to an account ruleset. The rule will be added to the end of the existing list of rules in the ruleset by default.
///
/// `POST /accounts/{account_id}/rulesets/{ruleset_id}/rules`
Future<ApiResult<RulesetsResponse, Never>> createAccountRulesetRule({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, required CreateAccountRulesetRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an account ruleset rule
///
/// Updates an existing rule in an account ruleset.
///
/// `PATCH /accounts/{account_id}/rulesets/{ruleset_id}/rules/{rule_id}`
Future<ApiResult<RulesetsResponse, Never>> updateAccountRulesetRule({required RulesetsRuleId ruleId, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, required UpdateAccountRulesetRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an account ruleset rule
///
/// Deletes an existing rule from an account ruleset.
///
/// `DELETE /accounts/{account_id}/rulesets/{ruleset_id}/rules/{rule_id}`
Future<ApiResult<RulesetsResponse, Never>> deleteAccountRulesetRule({required RulesetsRuleId ruleId, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List an account ruleset's versions
///
/// Fetches the versions of an account ruleset.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}/versions`
Future<ApiResult<ListAccountRulesetVersionsResponse, Never>> listAccountRulesetVersions({required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListAccountRulesetVersionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an account ruleset version
///
/// Fetches a specific version of an account ruleset.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`
Future<ApiResult<RulesetsResponse, Never>> getAccountRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an account ruleset version
///
/// Deletes an existing version of an account ruleset.
///
/// `DELETE /accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`
Future<ApiResult<void, Never>> deleteAccountRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// List an account ruleset version's rules by tag
///
/// Fetches the rules of a managed account ruleset version for a given tag.
///
/// `GET /accounts/{account_id}/rulesets/{ruleset_id}/versions/{ruleset_version}/by_tag/{rule_tag}`
Future<ApiResult<RulesetsResponse, Never>> listAccountRulesetVersionRulesByTag({required RulesetsRuleCategory ruleTag, required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetId rulesetId, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/${Uri.encodeComponent(rulesetId.toString())}/versions/${Uri.encodeComponent(rulesetVersion.toString())}/by_tag/${Uri.encodeComponent(ruleTag.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an account entry point ruleset
///
/// Fetches the latest version of the account entry point ruleset for a given phase.
///
/// `GET /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint`
Future<ApiResult<RulesetsResponse, Never>> getAccountEntrypointRuleset({required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.toString())}/entrypoint',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an account entry point ruleset
///
/// Updates an account entry point ruleset, creating a new version.
///
/// `PUT /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint`
Future<ApiResult<RulesetsResponse, Never>> updateAccountEntrypointRuleset({required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, required UpdateAccountEntrypointRulesetRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.toString())}/entrypoint',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List an account entry point ruleset's versions
///
/// Fetches the versions of an account entry point ruleset.
///
/// `GET /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions`
Future<ApiResult<ListAccountEntrypointRulesetVersionsResponse, Never>> listAccountEntrypointRulesetVersions({required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.toString())}/entrypoint/versions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListAccountEntrypointRulesetVersionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an account entry point ruleset version
///
/// Fetches a specific version of an account entry point ruleset.
///
/// `GET /accounts/{account_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions/{ruleset_version}`
Future<ApiResult<RulesetsResponse, Never>> getAccountEntrypointRulesetVersion({required RulesetsRulesetVersion rulesetVersion, required RulesetsRulesetPhase rulesetPhase, required RulesetsAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/rulesets/phases/${Uri.encodeComponent(rulesetPhase.toString())}/entrypoint/versions/${Uri.encodeComponent(rulesetVersion.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RulesetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
