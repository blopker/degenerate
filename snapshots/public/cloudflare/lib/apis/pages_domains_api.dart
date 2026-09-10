// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/pages_domain.dart';import '../models/pages_domain_name.dart';import '../models/pages_domains_add_domain_request.dart';import '../models/pages_identifier.dart';import '../models/pages_project_name.dart';import '../models/response_common_failure53.dart';/// PagesDomainsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PagesDomainsApi with ApiExecutor {const PagesDomainsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get domains
///
/// Fetch a list of all domains associated with a Pages project.
///
/// `GET /accounts/{account_id}/pages/projects/{project_name}/domains`
Future<ApiResult<List<PagesDomain>, ResponseCommonFailure53>> pagesDomainsGetDomains({required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => PagesDomain.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure53.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Add domain
///
/// Add a new domain for the Pages project.
///
/// `POST /accounts/{account_id}/pages/projects/{project_name}/domains`
Future<ApiResult<PagesDomain, ResponseCommonFailure53>> pagesDomainsAddDomain({required PagesProjectName projectName, required PagesIdentifier accountId, required PagesDomainsAddDomainRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return PagesDomain.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure53.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get domain
///
/// Fetch a single domain.
///
/// `GET /accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`
Future<ApiResult<PagesDomain, ResponseCommonFailure53>> pagesDomainsGetDomain({required PagesDomainName domainName, required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return PagesDomain.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure53.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Patch domain
///
/// Retry the validation status of a single domain.
///
/// `PATCH /accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`
Future<ApiResult<PagesDomain, ResponseCommonFailure53>> pagesDomainsPatchDomain({required PagesDomainName domainName, required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return PagesDomain.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure53.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Delete domain
///
/// Delete a Pages project's domain.
///
/// `DELETE /accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure53>> pagesDomainsDeleteDomain({required PagesDomainName domainName, required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure53.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
