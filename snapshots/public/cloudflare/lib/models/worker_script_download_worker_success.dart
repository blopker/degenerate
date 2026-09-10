// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class WorkerScriptDownloadWorkerSuccess {const WorkerScriptDownloadWorkerSuccess();

/// Decodes the payload for its declared status and content type.
static WorkerScriptDownloadWorkerSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'multipart/form-data', )) {
// TODO: Unsupported non-JSON response schema Cannot decode multipart/form-data response into Map<String, Uint8List>

throw  UnsupportedError('Cannot decode multipart/form-data response into Map<String, Uint8List>'); } else if (responseMediaTypeMatches(contentType, 'application/javascript', )) {
return  WorkerScriptDownloadWorkerSuccess200ApplicationJavascript(response.body); } else {
// TODO: Unsupported non-JSON response schema Cannot decode multipart/form-data response into Map<String, Uint8List>

throw  UnsupportedError('Cannot decode multipart/form-data response into Map<String, Uint8List>'); }default:
return  WorkerScriptDownloadWorkerSuccessUnknown(response); }}
}
/// Response for 200 (multipart/form-data).
final class WorkerScriptDownloadWorkerSuccess200MultipartFormData extends WorkerScriptDownloadWorkerSuccess {const WorkerScriptDownloadWorkerSuccess200MultipartFormData(this.data);

/// The decoded response payload.
final Map<String, Uint8List> data;

}
/// Response for 200 (application/javascript).
final class WorkerScriptDownloadWorkerSuccess200ApplicationJavascript extends WorkerScriptDownloadWorkerSuccess {const WorkerScriptDownloadWorkerSuccess200ApplicationJavascript(this.data);

/// The decoded response payload.
final String data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorkerScriptDownloadWorkerSuccessUnknown extends WorkerScriptDownloadWorkerSuccess {const WorkerScriptDownloadWorkerSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
