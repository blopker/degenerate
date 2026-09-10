// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_tag_update_response400.dart';import 'patch_tag_update_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PatchTagUpdateError {const PatchTagUpdateError();

/// Decodes the payload for its declared status and content type.
static PatchTagUpdateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  PatchTagUpdateError400(PatchTagUpdateResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  PatchTagUpdateError404(PatchTagUpdateResponse404.fromJson(json as Map<String, dynamic>));default:
return  PatchTagUpdateErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class PatchTagUpdateError400 extends PatchTagUpdateError {const PatchTagUpdateError400(this.data);

/// The decoded response payload.
final PatchTagUpdateResponse400 data;

}
/// Response for 404 (application/json).
final class PatchTagUpdateError404 extends PatchTagUpdateError {const PatchTagUpdateError404(this.data);

/// The decoded response payload.
final PatchTagUpdateResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PatchTagUpdateErrorUnknown extends PatchTagUpdateError {const PatchTagUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
