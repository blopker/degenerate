// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/dos_dns_protection_rule.dart';import '../models/dos_dns_protection_rule_update.dart';import '../models/dos_expression_filter.dart';import '../models/dos_expression_filter_update.dart';import '../models/dos_identifier.dart';import '../models/dos_infra_prefix.dart';import '../models/dos_infra_prefix_update.dart';import '../models/dos_new_dns_protection_rule.dart';import '../models/dos_new_expression_filter.dart';import '../models/dos_new_infra_prefix.dart';import '../models/dos_new_prefix.dart';import '../models/dos_new_syn_protection_rule.dart';import '../models/dos_new_tcp_flow_protection_rule.dart';import '../models/dos_prefix.dart';import '../models/dos_prefix_update.dart';import '../models/dos_protection_status.dart';import '../models/dos_syn_protection_rule.dart';import '../models/dos_syn_protection_rule_update.dart';import '../models/dos_tcp_flow_protection_rule.dart';import '../models/dos_tcp_flow_protection_rule_update.dart';import '../models/dos_update_protection_status.dart';import '../models/dos_uuid.dart';import '../models/response_common28.dart';/// OtherApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class OtherApi with ApiExecutor {const OtherApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all DNS Protection rules.
///
/// List all DNS Protection rules for an account.
///
/// `GET /accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules`
Future<ApiResult<List<DosDnsProtectionRule>?, Never>> listDnsProtectionRulesForAccount({required DosIdentifier accountId, int? page, int? perPage, String? order, String? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order;
}
if (direction != null) {
  queryParameters['direction'] = direction;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_dns_protection/configs/dns_protection/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosDnsProtectionRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create DNS Protection rule.
///
/// Create a DNS Protection rule for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules`
Future<ApiResult<DosDnsProtectionRule?, Never>> createDnsProtectionRule({required DosIdentifier accountId, required DosNewDnsProtectionRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_dns_protection/configs/dns_protection/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosDnsProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all DNS Protection rules.
///
/// Delete all DNS Protection rules for an account.
///
/// `DELETE /accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules`
Future<ApiResult<ResponseCommon28, Never>> deleteDnsProtectionRulesForAccount({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_dns_protection/configs/dns_protection/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get DNS Protection rule.
///
/// Get a DNS Protection rule specified by the given UUID.
///
/// `GET /accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules/{rule_id}`
Future<ApiResult<DosDnsProtectionRule?, Never>> getDnsProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_dns_protection/configs/dns_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosDnsProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update DNS Protection rule.
///
/// Update a DNS Protection rule specified by the given UUID.
///
/// `PATCH /accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules/{rule_id}`
Future<ApiResult<DosDnsProtectionRule?, Never>> updateDnsProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, required DosDnsProtectionRuleUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_dns_protection/configs/dns_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosDnsProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete DNS Protection rule.
///
/// Delete a DNS Protection rule specified by the given UUID.
///
/// `DELETE /accounts/{account_id}/magic/advanced_dns_protection/configs/dns_protection/rules/{rule_id}`
Future<ApiResult<ResponseCommon28, Never>> deleteDnsProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_dns_protection/configs/dns_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all allowlist prefixes.
///
/// List all allowlist prefixes for an account.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist`
Future<ApiResult<List<DosInfraPrefix>?, Never>> listAllowlistPrefixesForAccount({required DosIdentifier accountId, int? page, int? perPage, String? order, String? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order;
}
if (direction != null) {
  queryParameters['direction'] = direction;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/allowlist',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosInfraPrefix.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create allowlist prefix.
///
/// Create an allowlist prefix for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist`
Future<ApiResult<DosInfraPrefix?, Never>> createAllowlistedPrefix({required DosIdentifier accountId, required DosNewInfraPrefix body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/allowlist',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosInfraPrefix.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all allowlist prefixes.
///
/// Delete all allowlist prefixes for an account.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist`
Future<ApiResult<ResponseCommon28, Never>> deleteAllowlistPrefixesForAccount({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/allowlist',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get allowlist prefix.
///
/// Get an allowlist prefix specified by the given UUID.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist/{prefix_id}`
Future<ApiResult<DosInfraPrefix?, Never>> getAllowlistPrefix({required DosIdentifier accountId, required DosUuid prefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/allowlist/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosInfraPrefix.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update allowlist prefix.
///
/// Update an allowlist prefix specified by the given UUID.
///
/// `PATCH /accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist/{prefix_id}`
Future<ApiResult<DosInfraPrefix?, Never>> updateAllowlistPrefix({required DosIdentifier accountId, required DosUuid prefixId, required DosInfraPrefixUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/allowlist/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosInfraPrefix.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete allowlist prefix.
///
/// Delete the allowlist prefix for an account given a UUID.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/allowlist/{prefix_id}`
Future<ApiResult<ResponseCommon28, Never>> deleteAllowlistPrefix({required DosIdentifier accountId, required DosUuid prefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/allowlist/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all prefixes.
///
/// List all prefixes for an account.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes`
Future<ApiResult<List<DosPrefix>?, Never>> listPrefixesForAccount({required DosIdentifier accountId, int? page, int? perPage, String? order, String? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order;
}
if (direction != null) {
  queryParameters['direction'] = direction;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/prefixes',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosPrefix.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create prefix.
///
/// Create a prefix for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes`
Future<ApiResult<DosPrefix?, Never>> createPrefix({required DosIdentifier accountId, required DosNewPrefix body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/prefixes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosPrefix.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all prefixes.
///
/// Delete all prefixes for an account.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes`
Future<ApiResult<ResponseCommon28, Never>> deletePrefixesForAccount({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/prefixes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get prefix.
///
/// Get a prefix specified by the given UUID.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/{prefix_id}`
Future<ApiResult<DosPrefix?, Never>> getPrefix({required DosIdentifier accountId, required DosUuid prefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/prefixes/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosPrefix.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update prefix.
///
/// Update a prefix specified by the given UUID.
///
/// `PATCH /accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/{prefix_id}`
Future<ApiResult<DosPrefix?, Never>> updatePrefix({required DosIdentifier accountId, required DosUuid prefixId, required DosPrefixUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/prefixes/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosPrefix.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete prefix.
///
/// Delete the prefix for an account given a UUID.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/{prefix_id}`
Future<ApiResult<ResponseCommon28, Never>> deletePrefix({required DosIdentifier accountId, required DosUuid prefixId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/prefixes/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create multiple prefixes.
///
/// Create multiple prefixes for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_tcp_protection/configs/prefixes/bulk`
Future<ApiResult<List<DosPrefix>?, Never>> bulkCreatePrefixes({required DosIdentifier accountId, required List<DosNewPrefix> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/prefixes/bulk',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosPrefix.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List all SYN Protection filters.
///
/// List all SYN Protection filters for an account.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters`
Future<ApiResult<List<DosExpressionFilter>?, Never>> listSynProtectionFiltersForAccount({required DosIdentifier accountId, String? mode, int? page, int? perPage, String? order, String? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (mode != null) {
  queryParameters['mode'] = mode;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order;
}
if (direction != null) {
  queryParameters['direction'] = direction;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/filters',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosExpressionFilter.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a SYN Protection filter.
///
/// Create a SYN Protection filter for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters`
Future<ApiResult<DosExpressionFilter?, Never>> createSynProtectionFilter({required DosIdentifier accountId, required DosNewExpressionFilter body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/filters',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosExpressionFilter.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all SYN Protection filters.
///
/// Delete all SYN Protection filters for an account.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters`
Future<ApiResult<ResponseCommon28, Never>> deleteSynProtectionFiltersForAccount({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/filters',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get SYN Protection filter.
///
/// Get a SYN Protection filter specified by the given UUID.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters/{filter_id}`
Future<ApiResult<DosExpressionFilter?, Never>> getSynProtectionFilter({required DosIdentifier accountId, required DosUuid filterId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/filters/${Uri.encodeComponent(filterId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosExpressionFilter.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update SYN Protection filter.
///
/// Update a SYN Protection filter specified by the given UUID.
///
/// `PATCH /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters/{filter_id}`
Future<ApiResult<DosExpressionFilter?, Never>> updateSynProtectionFilter({required DosIdentifier accountId, required DosUuid filterId, required DosExpressionFilterUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/filters/${Uri.encodeComponent(filterId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosExpressionFilter.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete SYN Protection filter.
///
/// Delete a SYN Protection filter specified by the given UUID.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/filters/{filter_id}`
Future<ApiResult<ResponseCommon28, Never>> deleteSynProtectionFilter({required DosIdentifier accountId, required DosUuid filterId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/filters/${Uri.encodeComponent(filterId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all SYN Protection rules.
///
/// List all SYN Protection rules for an account.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules`
Future<ApiResult<List<DosSynProtectionRule>?, Never>> listSynProtectionRulesForAccount({required DosIdentifier accountId, int? page, int? perPage, String? order, String? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order;
}
if (direction != null) {
  queryParameters['direction'] = direction;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosSynProtectionRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create SYN Protection rule.
///
/// Create a SYN Protection rule for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules`
Future<ApiResult<DosSynProtectionRule?, Never>> createSynProtectionRule({required DosIdentifier accountId, required DosNewSynProtectionRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosSynProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all SYN Protection rules.
///
/// Delete all SYN Protection rules for an account.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules`
Future<ApiResult<ResponseCommon28, Never>> deleteSynProtectionRulesForAccount({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get SYN Protection rule.
///
/// Get a SYN Protection rule specified by the given UUID.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules/{rule_id}`
Future<ApiResult<DosSynProtectionRule?, Never>> getSynProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosSynProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update SYN Protection rule.
///
/// Update a SYN Protection rule specified by the given UUID.
///
/// `PATCH /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules/{rule_id}`
Future<ApiResult<DosSynProtectionRule?, Never>> updateSynProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, required DosSynProtectionRuleUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosSynProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete SYN Protection rule.
///
/// Delete a SYN Protection rule specified by the given UUID.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/syn_protection/rules/{rule_id}`
Future<ApiResult<ResponseCommon28, Never>> deleteSynProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/syn_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all TCP Flow Protection filters.
///
/// List all TCP Flow Protection filters for an account.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters`
Future<ApiResult<List<DosExpressionFilter>?, Never>> listTcpFlowProtectionFiltersForAccount({required DosIdentifier accountId, String? mode, int? page, int? perPage, String? order, String? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (mode != null) {
  queryParameters['mode'] = mode;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order;
}
if (direction != null) {
  queryParameters['direction'] = direction;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosExpressionFilter.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a TCP Flow Protection filter.
///
/// Create a TCP Flow Protection filter for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters`
Future<ApiResult<DosExpressionFilter?, Never>> createTcpFlowProtectionFilter({required DosIdentifier accountId, required DosNewExpressionFilter body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosExpressionFilter.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all TCP Flow Protection filters.
///
/// Delete all TCP Flow Protection filters for an account.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters`
Future<ApiResult<ResponseCommon28, Never>> deleteTcpFlowProtectionFiltersForAccount({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get TCP Flow Protection filter.
///
/// Get a TCP Flow Protection filter specified by the given UUID.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/{filter_id}`
Future<ApiResult<DosExpressionFilter?, Never>> getTcpFlowProtectionFilter({required DosIdentifier accountId, required DosUuid filterId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/${Uri.encodeComponent(filterId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosExpressionFilter.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update TCP Flow Protection filter.
///
/// Update a TCP Flow Protection filter specified by the given UUID.
///
/// `PATCH /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/{filter_id}`
Future<ApiResult<DosExpressionFilter?, Never>> updateTcpFlowProtectionFilter({required DosIdentifier accountId, required DosUuid filterId, required DosExpressionFilterUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/${Uri.encodeComponent(filterId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosExpressionFilter.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete TCP Flow Protection filter.
///
/// Delete a TCP Flow Protection filter specified by the given UUID.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/{filter_id}`
Future<ApiResult<ResponseCommon28, Never>> deleteTcpFlowProtectionFilter({required DosIdentifier accountId, required DosUuid filterId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/filters/${Uri.encodeComponent(filterId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all TCP Flow Protection rules.
///
/// List all TCP Flow Protection rules for an account.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules`
Future<ApiResult<List<DosTcpFlowProtectionRule>?, Never>> listTcpFlowProtectionRulesForAccount({required DosIdentifier accountId, int? page, int? perPage, String? order, String? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order;
}
if (direction != null) {
  queryParameters['direction'] = direction;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => DosTcpFlowProtectionRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create TCP Flow Protection rule.
///
/// Create a TCP Flow Protection rule for an account.
///
/// `POST /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules`
Future<ApiResult<DosTcpFlowProtectionRule?, Never>> createTcpFlowProtectionRule({required DosIdentifier accountId, required DosNewTcpFlowProtectionRule body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosTcpFlowProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete all TCP Flow Protection rules.
///
/// Delete all TCP Flow Protection rules for an account.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules`
Future<ApiResult<ResponseCommon28, Never>> deleteTcpFlowProtectionRulesForAccount({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get TCP Flow Protection rule.
///
/// Get a TCP Flow Protection rule specified by the given UUID.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/{rule_id}`
Future<ApiResult<DosTcpFlowProtectionRule?, Never>> getTcpFlowProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosTcpFlowProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update TCP Flow Protection rule.
///
/// Update a TCP Flow Protection rule specified by the given UUID.
///
/// `PATCH /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/{rule_id}`
Future<ApiResult<DosTcpFlowProtectionRule?, Never>> updateTcpFlowProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, required DosTcpFlowProtectionRuleUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosTcpFlowProtectionRule.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete TCP Flow Protection rule.
///
/// Delete a TCP Flow Protection rule specified by the given UUID.
///
/// `DELETE /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/{rule_id}`
Future<ApiResult<ResponseCommon28, Never>> deleteTcpFlowProtectionRule({required DosIdentifier accountId, required DosUuid ruleId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_flow_protection/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon28.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get protection status.
///
/// Get the protection status of the account.
///
/// `GET /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_protection_status`
Future<ApiResult<DosProtectionStatus?, Never>> getProtectionStatus({required DosIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_protection_status',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosProtectionStatus.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update protection status.
///
/// Update the protection status of the account.
///
/// `PATCH /accounts/{account_id}/magic/advanced_tcp_protection/configs/tcp_protection_status`
Future<ApiResult<DosProtectionStatus?, Never>> updateProtectionStatus({required DosIdentifier accountId, required DosUpdateProtectionStatus body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/advanced_tcp_protection/configs/tcp_protection_status',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? DosProtectionStatus.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
