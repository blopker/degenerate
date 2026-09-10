// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/error_model.dart';import '../models/pet.dart';/// PetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PetsApi with ApiExecutor {const PetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

///
/// `GET /pets`
Future<ApiResult<List<Pet>, ErrorModel>> listPets({int? limit, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/pets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => Pet.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
default:
final json = jsonDecode(response.body);
return ErrorModel.fromJson(json as Map<String, dynamic>);
}

  },
);
}
///
/// `POST /pets`
Future<ApiResult<void, ErrorModel>> createPet({required Pet body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/pets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
default:
final json = jsonDecode(response.body);
return ErrorModel.fromJson(json as Map<String, dynamic>);
}

  },
);
}
///
/// `GET /pets/{petId}`
Future<ApiResult<Pet, ErrorModel>> getPet({required String petId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/pets/${Uri.encodeComponent(petId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return Pet.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
default:
final json = jsonDecode(response.body);
return ErrorModel.fromJson(json as Map<String, dynamic>);
}

  },
);
}
}
