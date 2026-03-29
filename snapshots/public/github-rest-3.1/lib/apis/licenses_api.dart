// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/code_scanning_ref.dart';import '../models/license.dart';import '../models/license_content.dart';import '../models/license_simple.dart';/// LicensesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class LicensesApi with ApiExecutor {const LicensesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get all commonly used licenses
///
/// Lists the most commonly used licenses on GitHub. For more information, see "[Licensing a repository ](https://docs.github.com/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository)."
///
/// `GET /licenses`
Future<ApiResult<List<LicenseSimple>, Never>> licensesGetAllCommonlyUsed({bool? featured, int? perPage, int? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (featured != null) queryParameters['featured'] = featured.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (page != null) queryParameters['page'] = page.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/licenses',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => LicenseSimple.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get a license
///
/// Gets information about a specific license. For more information, see "[Licensing a repository ](https://docs.github.com/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository)."
///
/// `GET /licenses/{license}`
Future<ApiResult<License, BasicError>> licensesGet({required String license, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/licenses/${Uri.encodeComponent(license)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return License.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get the license for a repository
///
/// This method returns the contents of the repository's license file, if one is detected.
/// 
/// This endpoint supports the following custom media types. For more information, see "[Media types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
/// 
/// - **`application/vnd.github.raw+json`**: Returns the raw contents of the license.
/// - **`application/vnd.github.html+json`**: Returns the license contents in HTML. Markup languages are rendered to HTML using GitHub's open-source [Markup library](https://github.com/github/markup).
///
/// `GET /repos/{owner}/{repo}/license`
Future<ApiResult<LicenseContent, BasicError>> licensesGetForRepo({required String owner, required String repo, CodeScanningRef? ref, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ref != null) queryParameters['ref'] = ref.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/repos/${Uri.encodeComponent(owner)}/${Uri.encodeComponent(repo)}/license',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return LicenseContent.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
