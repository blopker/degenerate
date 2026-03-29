// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/code_of_conduct.dart';/// CodesOfConductApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CodesOfConductApi with ApiExecutor {const CodesOfConductApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get all codes of conduct
///
/// Returns array of all GitHub's codes of conduct.
///
/// `GET /codes_of_conduct`
Future<ApiResult<List<CodeOfConduct>, Never>> codesOfConductGetAllCodesOfConduct({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/codes_of_conduct',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => CodeOfConduct.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get a code of conduct
///
/// Returns information about the specified GitHub code of conduct.
///
/// `GET /codes_of_conduct/{key}`
Future<ApiResult<CodeOfConduct, BasicError>> codesOfConductGetConductCode({required String key, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/codes_of_conduct/${Uri.encodeComponent(key)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CodeOfConduct.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
