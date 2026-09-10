// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/post_indicator_type_create_request.dart';import '../models/post_indicator_type_create_response.dart';import '../models/post_indicator_type_create_response400.dart';import '../models/post_indicator_type_create_response500.dart';/// IndicatorsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IndicatorsApi with ApiExecutor {const IndicatorsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Create a new indicator type
///
/// Creates a new indicator type and initializes its dedicated Durable Object
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicatorTypes/create`
Future<ApiResult<PostIndicatorTypeCreateResponse, OneOf2<PostIndicatorTypeCreateResponse400, PostIndicatorTypeCreateResponse500>>> postIndicatorTypeCreate({required String accountId, required String datasetId, PostIndicatorTypeCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/indicatorTypes/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostIndicatorTypeCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<PostIndicatorTypeCreateResponse400, PostIndicatorTypeCreateResponse500>.a(PostIndicatorTypeCreateResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf2<PostIndicatorTypeCreateResponse400, PostIndicatorTypeCreateResponse500>.b(PostIndicatorTypeCreateResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
