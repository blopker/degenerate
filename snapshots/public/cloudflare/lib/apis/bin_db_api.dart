// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_bin_db_get_binary_response400.dart';import '../models/post_bin_db_post_request.dart';import '../models/post_bin_db_post_response.dart';import '../models/post_bin_db_post_response400.dart';/// BinDbApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class BinDbApi with ApiExecutor {const BinDbApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Posts a file to Binary Storage
///
/// `POST /accounts/{account_id}/cloudforce-one/binary`
Future<ApiResult<PostBinDbPostResponse, PostBinDbPostResponse400>> postBinDbPost({required double accountId, required PostBinDbPostRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/binary',
  headers: headers,
  body: [
    ApiMultipartField.file('file', body.file),
  ],
  contentType: 'multipart/form-data',
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body);
return  PostBinDbPostResponse.fromJson(json as Map<String, dynamic>);}, onError: (response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  PostBinDbPostResponse400.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
/// Retrieves a file from Binary Storage
///
/// `GET /accounts/{account_id}/cloudforce-one/binary/{hash}`
Future<ApiResult<void, GetBinDbGetBinaryResponse400>> getBinDbGetBinary({required double accountId, required String hash, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cloudforce-one/binary/${Uri.encodeComponent(hash)}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (_) {}, onError: (response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  GetBinDbGetBinaryResponse400.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
