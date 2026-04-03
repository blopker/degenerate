// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';
import 'dart:convert';
import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../models/list_model.dart';
import '../models/object_model.dart';
import '../models/proto.dart';
import '../models/string_model.dart';
import '../models/type_model.dart';
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
  /// `HAUNT /animals/{animalId}`
  Future<ApiResult<void, Never>> $toString({
    Proto? body,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};
    headers['Content-Type'] = 'application/json';

    final request = ApiRequest(
      method: 'HAUNT',
      path: '/animals/{animalId}',
      headers: headers,
      body: jsonEncode(body?.toJson()),
      options: options,
    );

    return execute(request, onSuccess: (_) {});
  }

  ///
  /// `PURGE /animals/{animalId}`
  Future<ApiResult<void, Never>> constructor({
    required String animalId,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'PURGE',
      path: '/animals/${Uri.encodeComponent(animalId)}',
      headers: headers,
      options: options,
    );

    return execute(request, onSuccess: (_) {});
  }

  ///
  /// `QUERY /incidents/search`
  Future<ApiResult<ListModel, Never>> $null({
    ObjectModel? body,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};
    headers['Content-Type'] = 'application/json';

    final request = ApiRequest(
      method: 'QUERY',
      path: '/incidents/search',
      headers: headers,
      body: jsonEncode(body?.toJson()),
      options: options,
    );

    return execute(
      request,
      onSuccess: (response) {
        return ListModel.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      },
    );
  }

  ///
  /// `GET /barn/{barnId}/events`
  Future<ApiResult<TypeModel, Never>> streamBarnEvents({
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

    return execute(
      request,
      onSuccess: (response) {
        // TODO: Unsupported non-JSON response schema Cannot decode text/event-stream response into TypeModel
        throw UnsupportedError(
          'Cannot decode text/event-stream response into TypeModel',
        );
      },
    );
  }

  ///
  /// `GET /prophecies`
  Future<ApiResult<StringModel, Never>> $yield({
    required YieldTopic topic,
    RequestOptions? options,
  }) async {
    final queryParameters = <String, String>{
      ...apiConfig.defaultQueryParameters,
    };
    final queryParametersList = <ApiQueryParameter>[];
    if (topic.$await case final $await$?) {
      queryParametersList.add(ApiQueryParameter(name: 'await', value: $await$));
    }
    if (topic.$async case final $async$?) {
      queryParametersList.add(
        ApiQueryParameter(name: 'async', value: $async$.toString()),
      );
    }

    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/prophecies',
      headers: headers,
      queryParameters: queryParameters,
      queryParametersList: queryParametersList,
      options: options,
    );

    return execute(
      request,
      onSuccess: (response) {
        // TODO: Unsupported non-JSON response schema Cannot decode application/jsonl response into StringModel
        throw UnsupportedError(
          'Cannot decode application/jsonl response into StringModel',
        );
      },
    );
  }

  /// Stream response.
  ///
  /// `GET /barn/{barnId}/events`
  Stream<TypeModel> streamBarnEventsStream({
    required String barnId,
    RequestOptions? options,
  }) {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/barn/${Uri.encodeComponent(barnId)}/events',
      headers: headers,
      options: options,
    );

    return executeStreaming(
      request,
      onEvent: (data) {
        return TypeModel.fromJson(jsonDecode(data) as Map<String, dynamic>);
      },
    );
  }

  /// Stream response.
  ///
  /// `GET /prophecies`
  Stream<StringModel> $yieldStream({
    required YieldTopic topic,
    RequestOptions? options,
  }) {
    final queryParameters = <String, String>{
      ...apiConfig.defaultQueryParameters,
    };
    final queryParametersList = <ApiQueryParameter>[];
    if (topic.$await case final $await$?) {
      queryParametersList.add(ApiQueryParameter(name: 'await', value: $await$));
    }
    if (topic.$async case final $async$?) {
      queryParametersList.add(
        ApiQueryParameter(name: 'async', value: $async$.toString()),
      );
    }

    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/prophecies',
      headers: headers,
      queryParameters: queryParameters,
      queryParametersList: queryParametersList,
      options: options,
    );

    return executeJsonlStreaming(
      request,
      onEvent: (data) {
        return StringModel.fromJson(jsonDecode(data) as Map<String, dynamic>);
      },
    );
  }
}
