// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_embedding_request.dart';import '../models/create_embedding_response.dart';/// EmbeddingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class EmbeddingsApi with ApiExecutor {const EmbeddingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Creates an embedding vector representing the input text.
///
/// `POST /embeddings`
Future<ApiResult<CreateEmbeddingResponse, Never>> createEmbedding({required CreateEmbeddingRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/embeddings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return CreateEmbeddingResponse.fromJson(json as Map<String, dynamic>);
  },
);
}
}
