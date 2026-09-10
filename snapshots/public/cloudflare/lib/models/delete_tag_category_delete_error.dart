// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_tag_category_delete_response400.dart';import 'delete_tag_category_delete_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteError();

/// Decodes the payload for its declared status and content type.
static DeleteTagCategoryDeleteError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DeleteTagCategoryDeleteError400(DeleteTagCategoryDeleteResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DeleteTagCategoryDeleteError404(DeleteTagCategoryDeleteResponse404.fromJson(json as Map<String, dynamic>));
default:
return DeleteTagCategoryDeleteErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class DeleteTagCategoryDeleteError400 extends DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteError400(this.data);

/// The decoded response payload.
final DeleteTagCategoryDeleteResponse400 data;

}
/// Response for 404 (application/json).
final class DeleteTagCategoryDeleteError404 extends DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteError404(this.data);

/// The decoded response payload.
final DeleteTagCategoryDeleteResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DeleteTagCategoryDeleteErrorUnknown extends DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
