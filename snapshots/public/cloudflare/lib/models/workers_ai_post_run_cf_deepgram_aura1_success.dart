// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class WorkersAiPostRunCfDeepgramAura1Success {const WorkersAiPostRunCfDeepgramAura1Success();

/// Decodes the payload for its declared status and content type.
static WorkersAiPostRunCfDeepgramAura1Success parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return WorkersAiPostRunCfDeepgramAura1Success200ApplicationJson(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'audio/mpeg')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return WorkersAiPostRunCfDeepgramAura1Success200AudioMpeg(value);
}
final json = jsonDecode(response.body);
return WorkersAiPostRunCfDeepgramAura1Success200ApplicationJson(json as Map<String, dynamic>);

default:
return WorkersAiPostRunCfDeepgramAura1SuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class WorkersAiPostRunCfDeepgramAura1Success200ApplicationJson extends WorkersAiPostRunCfDeepgramAura1Success {const WorkersAiPostRunCfDeepgramAura1Success200ApplicationJson(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

 }
/// Response for 200 (audio/mpeg).
final class WorkersAiPostRunCfDeepgramAura1Success200AudioMpeg extends WorkersAiPostRunCfDeepgramAura1Success {const WorkersAiPostRunCfDeepgramAura1Success200AudioMpeg(this.data);

/// The decoded response payload.
final Uint8List data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorkersAiPostRunCfDeepgramAura1SuccessUnknown extends WorkersAiPostRunCfDeepgramAura1Success {const WorkersAiPostRunCfDeepgramAura1SuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
