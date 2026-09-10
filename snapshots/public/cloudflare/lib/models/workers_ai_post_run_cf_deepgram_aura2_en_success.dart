// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class WorkersAiPostRunCfDeepgramAura2EnSuccess {const WorkersAiPostRunCfDeepgramAura2EnSuccess();

/// Decodes the payload for its declared status and content type.
static WorkersAiPostRunCfDeepgramAura2EnSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  WorkersAiPostRunCfDeepgramAura2EnSuccess200ApplicationJson(json as Map<String, dynamic>); } else if (responseMediaTypeMatches(contentType, 'audio/mpeg', )) {
return  WorkersAiPostRunCfDeepgramAura2EnSuccess200AudioMpeg(Uint8List.fromList(response.bodyBytes)); } else {
final json = jsonDecode(response.body);
return  WorkersAiPostRunCfDeepgramAura2EnSuccess200ApplicationJson(json as Map<String, dynamic>); }default:
return  WorkersAiPostRunCfDeepgramAura2EnSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class WorkersAiPostRunCfDeepgramAura2EnSuccess200ApplicationJson extends WorkersAiPostRunCfDeepgramAura2EnSuccess {const WorkersAiPostRunCfDeepgramAura2EnSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

}
/// Response for 200 (audio/mpeg).
final class WorkersAiPostRunCfDeepgramAura2EnSuccess200AudioMpeg extends WorkersAiPostRunCfDeepgramAura2EnSuccess {const WorkersAiPostRunCfDeepgramAura2EnSuccess200AudioMpeg(this.data);

/// The decoded response payload.
final Uint8List data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorkersAiPostRunCfDeepgramAura2EnSuccessUnknown extends WorkersAiPostRunCfDeepgramAura2EnSuccess {const WorkersAiPostRunCfDeepgramAura2EnSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
