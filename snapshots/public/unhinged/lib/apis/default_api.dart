// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';
import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../models/yield_topic.dart';

/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {
  const DefaultApi(this.apiConfig);

  @override
  final ApiConfig apiConfig;

  ///
  /// `GET /incidents/{id}/{id}`
  Future<ApiResult<void, Never>> getIncidentsById({
    required String id,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/incidents/${Uri.encodeComponent(id)}/${Uri.encodeComponent(id)}',
      headers: headers,
      options: options,
    );

    return execute(request, onSuccess: (_) {});
  }

  ///
  /// `GET /incidents/{inc%69dent-id}`
  Future<ApiResult<void, Never>> getByEncodedParam({
    required String inc69dentId,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/incidents/${Uri.encodeComponent(inc69dentId)}',
      headers: headers,
      options: options,
    );

    return execute(request, onSuccess: (_) {});
  }

  ///
  /// `GET /barn/{barnId}/events`
  Future<ApiResult<void, Never>> streamBarnEvents({
    required String barnId,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/barn/${Uri.encodeComponent(barnId)}/events',
      headers: headers,
      options: options,
    );

    return execute(request, onSuccess: (_) {});
  }

  ///
  /// `GET /prophecies`
  Future<ApiResult<void, Never>> $yield({
    required YieldTopic topic,
    RequestOptions? options,
  }) async {
    final queryParameters = <String, String>{
      ...apiConfig.defaultQueryParameters,
    };
    final queryParametersList = <ApiQueryParameter>[];
    if (topic.$await case final $await$?)
      queryParametersList.add(
        ApiQueryParameter(name: 'await', value: $await$, allowReserved: false),
      );
    if (topic.$async case final $async$?)
      queryParametersList.add(
        ApiQueryParameter(
          name: 'async',
          value: $async$.toString(),
          allowReserved: false,
        ),
      );

    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/prophecies',
      headers: headers,
      queryParameters: queryParameters,
      queryParametersList: queryParametersList,
      options: options,
    );

    return execute(request, onSuccess: (_) {});
  }
}
