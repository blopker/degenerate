// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/full_repository.dart';import '../models/global_advisory.dart';import '../models/private_vulnerability_report_create.dart';import '../models/repository_advisory.dart';import '../models/repository_advisory_create.dart';import '../models/repository_advisory_update.dart';import '../models/security_advisories_list_global_advisories_affects.dart';import '../models/security_advisories_list_global_advisories_cwes.dart';import '../models/security_advisories_list_global_advisories_direction.dart';import '../models/security_advisories_list_global_advisories_severity.dart';import '../models/security_advisories_list_global_advisories_sort.dart';import '../models/security_advisories_list_global_advisories_type.dart';import '../models/security_advisories_list_org_repository_advisories_direction.dart';import '../models/security_advisories_list_org_repository_advisories_sort.dart';import '../models/security_advisories_list_org_repository_advisories_state.dart';import '../models/security_advisories_list_repository_advisories_direction.dart';import '../models/security_advisories_list_repository_advisories_sort.dart';import '../models/security_advisories_list_repository_advisories_state.dart';import '../models/security_advisory_ecosystems.dart';/// SecurityAdvisoriesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SecurityAdvisoriesApi with ApiExecutor {const SecurityAdvisoriesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List global security advisories
///
/// Lists all global security advisories that match the specified parameters. If no other parameters are defined, the request will return only GitHub-reviewed advisories that are not malware.
/// 
/// By default, all responses will exclude advisories for malware, because malware are not standard vulnerabilities. To list advisories for malware, you must include the `type` parameter in your request, with the value `malware`. For more information about the different types of security advisories, see "[About the GitHub Advisory database](https://docs.github.com/code-security/security-advisories/global-security-advisories/about-the-github-advisory-database#about-types-of-security-advisories)."
///
/// `GET /advisories`
Future<ApiResult<List<GlobalAdvisory>, BasicError>> securityAdvisoriesListGlobalAdvisories({String? ghsaId, SecurityAdvisoriesListGlobalAdvisoriesType? type, String? cveId, SecurityAdvisoryEcosystems? ecosystem, SecurityAdvisoriesListGlobalAdvisoriesSeverity? severity, SecurityAdvisoriesListGlobalAdvisoriesCwes? cwes, bool? isWithdrawn, SecurityAdvisoriesListGlobalAdvisoriesAffects? affects, String? published, String? updated, String? modified, String? epssPercentage, String? epssPercentile, String? before, String? after, SecurityAdvisoriesListGlobalAdvisoriesDirection? direction, int? perPage, SecurityAdvisoriesListGlobalAdvisoriesSort? sort, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ghsaId != null) {
  queryParameters['ghsa_id'] = ghsaId;
}
if (type != null) {
  queryParameters['type'] = type.toJson();
}
if (cveId != null) {
  queryParameters['cve_id'] = cveId;
}
if (ecosystem != null) {
  queryParameters['ecosystem'] = ecosystem.toJson();
}
if (severity != null) {
  queryParameters['severity'] = severity.toJson();
}
if (cwes != null) {
queryParametersList.add(ApiQueryParameter(name: 'cwes', value: cwes.toString()));
}
if (isWithdrawn != null) {
  queryParameters['is_withdrawn'] = isWithdrawn.toString();
}
if (affects != null) {
queryParametersList.add(ApiQueryParameter(name: 'affects', value: affects.toString()));
}
if (published != null) {
  queryParameters['published'] = published;
}
if (updated != null) {
  queryParameters['updated'] = updated;
}
if (modified != null) {
  queryParameters['modified'] = modified;
}
if (epssPercentage != null) {
  queryParameters['epss_percentage'] = epssPercentage;
}
if (epssPercentile != null) {
  queryParameters['epss_percentile'] = epssPercentile;
}
if (before != null) {
  queryParameters['before'] = before;
}
if (after != null) {
  queryParameters['after'] = after;
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (sort != null) {
  queryParameters['sort'] = sort.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/advisories',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GlobalAdvisory.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a global security advisory
///
/// Gets a global security advisory using its GitHub Security Advisory (GHSA) identifier.
///
/// `GET /advisories/{ghsa_id}`
Future<ApiResult<GlobalAdvisory, BasicError>> securityAdvisoriesGetGlobalAdvisory({required String ghsaId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/advisories/${Uri.encodeComponent(ghsaId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GlobalAdvisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List repository security advisories for an organization
///
/// Lists repository security advisories for an organization.
/// 
/// The authenticated user must be an owner or security manager for the organization to use this endpoint.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `repo` or `repository_advisories:write` scope to use this endpoint.
///
/// `GET /orgs/{org}/security-advisories`
Future<ApiResult<List<RepositoryAdvisory>, BasicError>> securityAdvisoriesListOrgRepositoryAdvisories({required String org, SecurityAdvisoriesListOrgRepositoryAdvisoriesDirection? direction, SecurityAdvisoriesListOrgRepositoryAdvisoriesSort? sort, String? before, String? after, int? perPage, SecurityAdvisoriesListOrgRepositoryAdvisoriesState? state, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (sort != null) {
  queryParameters['sort'] = sort.toJson();
}
if (before != null) {
  queryParameters['before'] = before;
}
if (after != null) {
  queryParameters['after'] = after;
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (state != null) {
  queryParameters['state'] = state.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/security-advisories',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => RepositoryAdvisory.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List repository security advisories
///
/// Lists security advisories in a repository.
/// 
/// The authenticated user can access unpublished security advisories from a repository if they are a security manager or administrator of that repository, or if they are a collaborator on any security advisory.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `repo` or `repository_advisories:read` scope to to get a published security advisory in a private repository, or any unpublished security advisory that the authenticated user has access to.
///
/// `GET /repos/{owner}/{repo}/security-advisories`
Future<ApiResult<List<RepositoryAdvisory>, BasicError>> securityAdvisoriesListRepositoryAdvisories({required String owner, required String repo, SecurityAdvisoriesListRepositoryAdvisoriesDirection? direction, SecurityAdvisoriesListRepositoryAdvisoriesSort? sort, String? before, String? after, int? perPage, SecurityAdvisoriesListRepositoryAdvisoriesState? state, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (sort != null) {
  queryParameters['sort'] = sort.toJson();
}
if (before != null) {
  queryParameters['before'] = before;
}
if (after != null) {
  queryParameters['after'] = after;
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (state != null) {
  queryParameters['state'] = state.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/security-advisories',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => RepositoryAdvisory.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a repository security advisory
///
/// Creates a new repository security advisory.
/// 
/// In order to create a draft repository security advisory, the authenticated user must be a security manager or administrator of that repository.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `repo` or `repository_advisories:write` scope to use this endpoint.
///
/// `POST /repos/{owner}/{repo}/security-advisories`
Future<ApiResult<RepositoryAdvisory, BasicError>> securityAdvisoriesCreateRepositoryAdvisory({required String owner, required String repo, required RepositoryAdvisoryCreate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/security-advisories',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RepositoryAdvisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Privately report a security vulnerability
///
/// Report a security vulnerability to the maintainers of the repository.
/// See "[Privately reporting a security vulnerability](https://docs.github.com/code-security/security-advisories/guidance-on-reporting-and-writing/privately-reporting-a-security-vulnerability)" for more information about private vulnerability reporting.
///
/// `POST /repos/{owner}/{repo}/security-advisories/reports`
Future<ApiResult<RepositoryAdvisory, BasicError>> securityAdvisoriesCreatePrivateVulnerabilityReport({required String owner, required String repo, required PrivateVulnerabilityReportCreate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/security-advisories/reports',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RepositoryAdvisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a repository security advisory
///
/// Get a repository security advisory using its GitHub Security Advisory (GHSA) identifier.
/// 
/// Anyone can access any published security advisory on a public repository.
/// 
/// The authenticated user can access an unpublished security advisory from a repository if they are a security manager or administrator of that repository, or if they are a
/// collaborator on the security advisory.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `repo` or `repository_advisories:read` scope to to get a published security advisory in a private repository, or any unpublished security advisory that the authenticated user has access to.
///
/// `GET /repos/{owner}/{repo}/security-advisories/{ghsa_id}`
Future<ApiResult<RepositoryAdvisory, BasicError>> securityAdvisoriesGetRepositoryAdvisory({required String owner, required String repo, required String ghsaId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/security-advisories/${Uri.encodeComponent(ghsaId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RepositoryAdvisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a repository security advisory
///
/// Update a repository security advisory using its GitHub Security Advisory (GHSA) identifier.
/// 
/// In order to update any security advisory, the authenticated user must be a security manager or administrator of that repository,
/// or a collaborator on the repository security advisory.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `repo` or `repository_advisories:write` scope to use this endpoint.
///
/// `PATCH /repos/{owner}/{repo}/security-advisories/{ghsa_id}`
Future<ApiResult<RepositoryAdvisory, BasicError>> securityAdvisoriesUpdateRepositoryAdvisory({required String owner, required String repo, required String ghsaId, required RepositoryAdvisoryUpdate body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/security-advisories/${Uri.encodeComponent(ghsaId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RepositoryAdvisory.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Request a CVE for a repository security advisory
///
/// If you want a CVE identification number for the security vulnerability in your project, and don't already have one, you can request a CVE identification number from GitHub. For more information see "[Requesting a CVE identification number](https://docs.github.com/code-security/security-advisories/repository-security-advisories/publishing-a-repository-security-advisory#requesting-a-cve-identification-number-optional)."
/// 
/// You may request a CVE for public repositories, but cannot do so for private repositories.
/// 
/// In order to request a CVE for a repository security advisory, the authenticated user must be a security manager or administrator of that repository.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `repo` or `repository_advisories:write` scope to use this endpoint.
///
/// `POST /repos/{owner}/{repo}/security-advisories/{ghsa_id}/cve`
Future<ApiResult<Map<String, dynamic>, BasicError>> securityAdvisoriesCreateRepositoryAdvisoryCveRequest({required String owner, required String repo, required String ghsaId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/security-advisories/${Uri.encodeComponent(ghsaId)}/cve',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, v));
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a temporary private fork
///
/// Create a temporary private fork to collaborate on fixing a security vulnerability in your repository.
/// 
/// > [!NOTE]
/// > Forking a repository happens asynchronously. You may have to wait up to 5 minutes before you can access the fork.
///
/// `POST /repos/{owner}/{repo}/security-advisories/{ghsa_id}/forks`
Future<ApiResult<FullRepository, BasicError>> securityAdvisoriesCreateFork({required String owner, required String repo, required String ghsaId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/security-advisories/${Uri.encodeComponent(ghsaId)}/forks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return FullRepository.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
