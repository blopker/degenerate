// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsDownloadArtifactError {const ActionsDownloadArtifactError();

/// Decodes the payload for its declared status and content type.
static ActionsDownloadArtifactError parse(ApiResponse response) {switch (response.statusCode) {
case 302:
return  const ActionsDownloadArtifactError302();case 410:
final json = jsonDecode(response.body);
return  ActionsDownloadArtifactError410(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ActionsDownloadArtifactErrorUnknown(response); }}
}
/// Response for 302.
final class ActionsDownloadArtifactError302 extends ActionsDownloadArtifactError {const ActionsDownloadArtifactError302();

}
/// Response for 410 (application/json).
final class ActionsDownloadArtifactError410 extends ActionsDownloadArtifactError {const ActionsDownloadArtifactError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsDownloadArtifactErrorUnknown extends ActionsDownloadArtifactError {const ActionsDownloadArtifactErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
