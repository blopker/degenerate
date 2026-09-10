// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class WorkersAiPostRunCfDeepgramAura2EsSuccess {const WorkersAiPostRunCfDeepgramAura2EsSuccess();

/// Decodes the payload for its declared status and content type.
static WorkersAiPostRunCfDeepgramAura2EsSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return WorkersAiPostRunCfDeepgramAura2EsSuccess200ApplicationJson(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'audio/mpeg')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return WorkersAiPostRunCfDeepgramAura2EsSuccess200AudioMpeg(value);
}
final json = jsonDecode(response.body);
return WorkersAiPostRunCfDeepgramAura2EsSuccess200ApplicationJson(json as Map<String, dynamic>);

default:
return WorkersAiPostRunCfDeepgramAura2EsSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class WorkersAiPostRunCfDeepgramAura2EsSuccess200ApplicationJson extends WorkersAiPostRunCfDeepgramAura2EsSuccess {const WorkersAiPostRunCfDeepgramAura2EsSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

 }
/// Response for 200 (audio/mpeg).
final class WorkersAiPostRunCfDeepgramAura2EsSuccess200AudioMpeg extends WorkersAiPostRunCfDeepgramAura2EsSuccess {const WorkersAiPostRunCfDeepgramAura2EsSuccess200AudioMpeg(this.data);

/// The decoded response payload.
final Uint8List data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorkersAiPostRunCfDeepgramAura2EsSuccessUnknown extends WorkersAiPostRunCfDeepgramAura2EsSuccess {const WorkersAiPostRunCfDeepgramAura2EsSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
