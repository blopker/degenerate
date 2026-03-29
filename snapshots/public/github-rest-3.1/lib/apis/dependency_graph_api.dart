// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/dependency_graph_create_repository_snapshot_response.dart';import '../models/dependency_graph_diff2.dart';import '../models/dependency_graph_spdx_sbom.dart';import '../models/snapshot.dart';/// DependencyGraphApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DependencyGraphApi with ApiExecutor {const DependencyGraphApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get a diff of the dependencies between commits
///
/// Gets the diff of the dependency changes between two commits of a repository, based on the changes to the dependency manifests made in those commits.
///
/// `GET /repos/{owner}/{repo}/dependency-graph/compare/{basehead}`
Future<ApiResult<List<DependencyGraphDiff2>, BasicError>> dependencyGraphDiffRange({required String owner, required String repo, required String basehead, String? name, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) queryParameters['name'] = name;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/dependency-graph/compare/${Uri.encodeComponent(basehead)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => DependencyGraphDiff2.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Export a software bill of materials (SBOM) for a repository.
///
/// Exports the software bill of materials (SBOM) for a repository in SPDX JSON format.
///
/// `GET /repos/{owner}/{repo}/dependency-graph/sbom`
Future<ApiResult<DependencyGraphSpdxSbom, BasicError>> dependencyGraphExportSbom({required String owner, required String repo, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/dependency-graph/sbom',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DependencyGraphSpdxSbom.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a snapshot of dependencies for a repository
///
/// Create a new snapshot of a repository's dependencies.
/// 
/// The authenticated user must have access to the repository.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `repo` scope to use this endpoint.
///
/// `POST /repos/{owner}/{repo}/dependency-graph/snapshots`
Future<ApiResult<DependencyGraphCreateRepositorySnapshotResponse, Never>> dependencyGraphCreateRepositorySnapshot({required String owner, required String repo, required Snapshot body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/dependency-graph/snapshots',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DependencyGraphCreateRepositorySnapshotResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
