// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';
import 'dart:convert';
import 'package:degenerate_runtime/degenerate_runtime.dart';
import '../models/self.dart';

/// ClassApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ClassApi with ApiExecutor {
  const ClassApi(this.apiConfig);

  @override
  final ApiConfig apiConfig;

  ///
  /// `GET /animals/{animalId}`
  Future<ApiResult<Self, Never>> getAnimal({
    required String animalId,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path: '/animals/${Uri.encodeComponent(animalId)}',
      headers: headers,
      options: options,
    );

    return execute(
      request,
      onSuccess: (response) {
        return Self.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      },
    );
  }
}
