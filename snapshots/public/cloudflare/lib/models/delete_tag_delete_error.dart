// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_tag_delete_response400.dart';import 'delete_tag_delete_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeleteTagDeleteError {const DeleteTagDeleteError();

/// Decodes the payload for its declared status and content type.
static DeleteTagDeleteError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DeleteTagDeleteError400(DeleteTagDeleteResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DeleteTagDeleteError404(DeleteTagDeleteResponse404.fromJson(json as Map<String, dynamic>));
default:
return DeleteTagDeleteErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class DeleteTagDeleteError400 extends DeleteTagDeleteError {const DeleteTagDeleteError400(this.data);

/// The decoded response payload.
final DeleteTagDeleteResponse400 data;

}
/// Response for 404 (application/json).
final class DeleteTagDeleteError404 extends DeleteTagDeleteError {const DeleteTagDeleteError404(this.data);

/// The decoded response payload.
final DeleteTagDeleteResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DeleteTagDeleteErrorUnknown extends DeleteTagDeleteError {const DeleteTagDeleteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
