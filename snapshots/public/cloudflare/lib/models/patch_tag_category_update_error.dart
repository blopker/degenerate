// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_tag_category_update_response400.dart';import 'patch_tag_category_update_response404.dart';import 'patch_tag_category_update_response409.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError();

/// Decodes the payload for its declared status and content type.
static PatchTagCategoryUpdateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PatchTagCategoryUpdateError400(PatchTagCategoryUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PatchTagCategoryUpdateError404(PatchTagCategoryUpdateResponse404.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return PatchTagCategoryUpdateError409(PatchTagCategoryUpdateResponse409.fromJson(json as Map<String, dynamic>));
default:
return PatchTagCategoryUpdateErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class PatchTagCategoryUpdateError400 extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError400(this.data);

/// The decoded response payload.
final PatchTagCategoryUpdateResponse400 data;

}
/// Response for 404 (application/json).
final class PatchTagCategoryUpdateError404 extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError404(this.data);

/// The decoded response payload.
final PatchTagCategoryUpdateResponse404 data;

}
/// Response for 409 (application/json).
final class PatchTagCategoryUpdateError409 extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError409(this.data);

/// The decoded response payload.
final PatchTagCategoryUpdateResponse409 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PatchTagCategoryUpdateErrorUnknown extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
