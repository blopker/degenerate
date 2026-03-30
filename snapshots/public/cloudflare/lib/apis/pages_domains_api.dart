// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/pages_domain_name.dart';import '../models/pages_domains_add_domain_request.dart';import '../models/pages_domains_add_domain_response.dart';import '../models/pages_domains_delete_domain_response.dart';import '../models/pages_domains_get_domain_response.dart';import '../models/pages_domains_get_domains_response.dart';import '../models/pages_domains_patch_domain_response.dart';import '../models/pages_identifier.dart';import '../models/pages_project_name.dart';/// PagesDomainsApi operations.
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
Future<ApiResult<PagesDomainsGetDomainsResponse, Never>> pagesDomainsGetDomains({required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PagesDomainsGetDomainsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add domain
///
/// Add a new domain for the Pages project.
///
/// `POST /accounts/{account_id}/pages/projects/{project_name}/domains`
Future<ApiResult<PagesDomainsAddDomainResponse, Never>> pagesDomainsAddDomain({required PagesProjectName projectName, required PagesIdentifier accountId, required PagesDomainsAddDomainRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PagesDomainsAddDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get domain
///
/// Fetch a single domain.
///
/// `GET /accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`
Future<ApiResult<PagesDomainsGetDomainResponse, Never>> pagesDomainsGetDomain({required PagesDomainName domainName, required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PagesDomainsGetDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch domain
///
/// Retry the validation status of a single domain.
///
/// `PATCH /accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`
Future<ApiResult<PagesDomainsPatchDomainResponse, Never>> pagesDomainsPatchDomain({required PagesDomainName domainName, required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PagesDomainsPatchDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete domain
///
/// Delete a Pages project's domain.
///
/// `DELETE /accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`
Future<ApiResult<PagesDomainsDeleteDomainResponse, Never>> pagesDomainsDeleteDomain({required PagesDomainName domainName, required PagesProjectName projectName, required PagesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/pages/projects/${Uri.encodeComponent(projectName.toString())}/domains/${Uri.encodeComponent(domainName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PagesDomainsDeleteDomainResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
