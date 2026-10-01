// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'package:degenerate_runtime/degenerate_runtime.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

///
/// `GET /secure`
Future<ApiResult<void, Never>> secureRead({RequestOptions? options}) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];

final cookies = <String, String>{...apiConfig.defaultCookies};

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/secure',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  cookies: cookies,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, );}
///
/// `GET /maybe-secure`
Future<ApiResult<void, Never>> maybeSecureRead({RequestOptions? options}) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];

final cookies = <String, String>{...apiConfig.defaultCookies};

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/maybe-secure',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  cookies: cookies,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, );}
///
/// `GET /roulette-secure`
Future<ApiResult<void, Never>> rouletteSecureRead({RequestOptions? options}) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];

final cookies = <String, String>{...apiConfig.defaultCookies};

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/roulette-secure',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  cookies: cookies,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, );}
///
/// `GET /less-secure`
Future<ApiResult<void, Never>> lessSecureRead({RequestOptions? options}) async {final cookies = <String, String>{...apiConfig.defaultCookies};

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/less-secure',
  headers: headers,
  cookies: cookies,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, );}
///
/// `GET /least-secure`
Future<ApiResult<void, Never>> leastSecureRead({RequestOptions? options}) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/least-secure',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, );}
///
/// `GET /insecure`
Future<ApiResult<void, Never>> insecureRead({RequestOptions? options}) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/insecure',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, );}
}
