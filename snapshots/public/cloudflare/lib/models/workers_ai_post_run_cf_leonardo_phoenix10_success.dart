// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class WorkersAiPostRunCfLeonardoPhoenix10Success {const WorkersAiPostRunCfLeonardoPhoenix10Success();

/// Decodes the payload for its declared status and content type.
static WorkersAiPostRunCfLeonardoPhoenix10Success parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return WorkersAiPostRunCfLeonardoPhoenix10Success200ApplicationJson(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/jpeg')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return WorkersAiPostRunCfLeonardoPhoenix10Success200ImageJpeg(value);
}
final json = jsonDecode(response.body);
return WorkersAiPostRunCfLeonardoPhoenix10Success200ApplicationJson(json as Map<String, dynamic>);

default:
return WorkersAiPostRunCfLeonardoPhoenix10SuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class WorkersAiPostRunCfLeonardoPhoenix10Success200ApplicationJson extends WorkersAiPostRunCfLeonardoPhoenix10Success {const WorkersAiPostRunCfLeonardoPhoenix10Success200ApplicationJson(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

 }
/// Response for 200 (image/jpeg).
final class WorkersAiPostRunCfLeonardoPhoenix10Success200ImageJpeg extends WorkersAiPostRunCfLeonardoPhoenix10Success {const WorkersAiPostRunCfLeonardoPhoenix10Success200ImageJpeg(this.data);

/// The decoded response payload.
final Uint8List data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorkersAiPostRunCfLeonardoPhoenix10SuccessUnknown extends WorkersAiPostRunCfLeonardoPhoenix10Success {const WorkersAiPostRunCfLeonardoPhoenix10SuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
