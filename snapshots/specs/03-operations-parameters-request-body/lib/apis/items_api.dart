// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_token_request.dart';import '../models/get_item_filter.dart';import '../models/upload_file_request.dart';/// ItemsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ItemsApi with ApiExecutor {const ItemsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Read item
///
/// Returns one item
///
/// `GET /items/{itemId}`
Future<ApiResult<void, Never>> getItem({required String itemId, List<String>? fields, List<String>? tagsPipe, List<String>? tagsSpace, GetItemFilter? filter, String? xTraceId, String? session, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (fields != null) {
queryParametersList.add(ApiQueryParameter(name: 'fields', value: fields.join(','), allowReserved: true));
}
if (tagsPipe != null) {
queryParameters['tagsPipe'] = tagsPipe.join('|');
}
if (tagsSpace != null) {
queryParameters['tagsSpace'] = tagsSpace.join(' ');
}
if (filter != null) {
queryParameters['filter[status]'] = filter.status;
queryParameters['filter[limit]'] = filter.limit.toString();
}

final cookies = <String, String>{...apiConfig.defaultCookies};
if (session != null) {
  cookies['session'] = session;
}

final headers = <String, String>{...apiConfig.defaultHeaders};
if (xTraceId != null) {
  headers['X-Trace-Id'] = xTraceId;
}

final request = ApiRequest(
  method: 'GET',
  path: '/items/${Uri.encodeComponent(itemId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  cookies: cookies,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Upload a file with metadata
///
/// `POST /upload`
Future<ApiResult<void, Never>> uploadFile({required UploadFileRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/upload',
  headers: headers,
  body: [
    ApiMultipartField.file('file', body.file),
    ApiMultipartField.text('description', body.description),
    if (body.tags case final tags$?)
      ApiMultipartField.text('tags', tags$),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Create an auth token
///
/// `POST /token`
Future<ApiResult<void, Never>> createToken({required CreateTokenRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/token',
  headers: headers,
  body: [
    'grant_type=${Uri.encodeQueryComponent(body.grantType)}',
    if (body.scope case final scope$?)
      'scope=${Uri.encodeQueryComponent(scope$)}',
    if (body.timeout case final timeout$?)
      'timeout=${Uri.encodeQueryComponent(timeout$.toString())}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
