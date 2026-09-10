// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess {const WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess();

/// Decodes the payload for its declared status and content type.
static WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess200ApplicationJson(json as Map<String, dynamic>);
}
if (responseMediaTypeMatches(contentType, 'image/png')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess200ImagePng(value);
}
final json = jsonDecode(response.body);
return WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess200ApplicationJson(json as Map<String, dynamic>);

default:
return WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess200ApplicationJson extends WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess {const WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

}
/// Response for 200 (image/png).
final class WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess200ImagePng extends WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess {const WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess200ImagePng(this.data);

/// The decoded response payload.
final Uint8List data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccessUnknown extends WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccess {const WorkersAiPostRunCfBytedanceStableDiffusionXlLightningSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
