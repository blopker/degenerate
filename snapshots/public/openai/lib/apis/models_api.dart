// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_model_response.dart';import '../models/list_models_response.dart';import '../models/model.dart';/// ModelsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ModelsApi with ApiExecutor {const ModelsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists the currently available models, and provides basic information about each one such as the owner and availability.
///
/// `GET /models`
Future<ApiResult<ListModelsResponse, Never>> listModels({RequestOptions? options}) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/models',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ListModelsResponse.fromJson(json as Map<String, dynamic>);
  },
);
}
/// Retrieves a model instance, providing basic information about the model such as the owner and permissioning.
///
/// `GET /models/{model}`
Future<ApiResult<Model, Never>> retrieveModel({required String model, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/models/${Uri.encodeComponent(model)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return Model.fromJson(json as Map<String, dynamic>);
  },
);
}
/// Delete a fine-tuned model. You must have the Owner role in your organization to delete a model.
///
/// `DELETE /models/{model}`
Future<ApiResult<DeleteModelResponse, Never>> deleteModel({required String model, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/models/${Uri.encodeComponent(model)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteModelResponse.fromJson(json as Map<String, dynamic>);
  },
);
}
}
