// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/add_upload_part_request.dart';import '../models/complete_upload_request.dart';import '../models/create_upload_request.dart';import '../models/upload.dart';import '../models/upload_part.dart';/// UploadsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UploadsApi with ApiExecutor {const UploadsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Creates an intermediate [Upload](/docs/api-reference/uploads/object) object
/// that you can add [Parts](/docs/api-reference/uploads/part-object) to.
/// Currently, an Upload can accept at most 8 GB in total and expires after an
/// hour after you create it.
/// 
/// Once you complete the Upload, we will create a
/// [File](/docs/api-reference/files/object) object that contains all the parts
/// you uploaded. This File is usable in the rest of our platform as a regular
/// File object.
/// 
/// For certain `purpose` values, the correct `mime_type` must be specified.
/// Please refer to documentation for the
/// [supported MIME types for your use case](/docs/assistants/tools/file-search#supported-files).
/// 
/// For guidance on the proper filename extensions for each purpose, please
/// follow the documentation on [creating a
/// File](/docs/api-reference/files/create).
/// 
/// Returns the Upload object with status `pending`.
/// 
///
/// `POST /uploads`
Future<ApiResult<Upload, Never>> createUpload({required CreateUploadRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/uploads',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Upload.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Cancels the Upload. No Parts may be added after an Upload is cancelled.
/// 
/// Returns the Upload object with status `cancelled`.
/// 
///
/// `POST /uploads/{upload_id}/cancel`
Future<ApiResult<Upload, Never>> cancelUpload({required String uploadId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/uploads/${Uri.encodeComponent(uploadId)}/cancel',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Upload.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Completes the [Upload](/docs/api-reference/uploads/object).
/// 
/// Within the returned Upload object, there is a nested [File](/docs/api-reference/files/object) object that is ready to use in the rest of the platform.
/// 
/// You can specify the order of the Parts by passing in an ordered list of the Part IDs.
/// 
/// The number of bytes uploaded upon completion must match the number of bytes initially specified when creating the Upload object. No Parts may be added after an Upload is completed.
/// Returns the Upload object with status `completed`, including an additional `file` property containing the created usable File object.
/// 
///
/// `POST /uploads/{upload_id}/complete`
Future<ApiResult<Upload, Never>> completeUpload({required String uploadId, required CompleteUploadRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/uploads/${Uri.encodeComponent(uploadId)}/complete',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Upload.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Adds a [Part](/docs/api-reference/uploads/part-object) to an [Upload](/docs/api-reference/uploads/object) object. A Part represents a chunk of bytes from the file you are trying to upload.
/// 
/// Each Part can be at most 64 MB, and you can add Parts until you hit the Upload maximum of 8 GB.
/// 
/// It is possible to add multiple Parts in parallel. You can decide the intended order of the Parts when you [complete the Upload](/docs/api-reference/uploads/complete).
/// 
///
/// `POST /uploads/{upload_id}/parts`
Future<ApiResult<UploadPart, Never>> addUploadPart({required String uploadId, required AddUploadPartRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/uploads/${Uri.encodeComponent(uploadId)}/parts',
  headers: headers,
  body: [
    ApiMultipartField.file('data', body.data),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UploadPart.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
