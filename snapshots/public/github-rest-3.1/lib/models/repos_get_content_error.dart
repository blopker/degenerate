// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposGetContentError {const ReposGetContentError();

/// Decodes the payload for its declared status and content type.
static ReposGetContentError parse(ApiResponse response) {switch (response.statusCode) {
case 302:
return  const ReposGetContentError302();case 304:
return  const ReposGetContentError304();case 403:
final json = jsonDecode(response.body);
return  ReposGetContentError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ReposGetContentError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ReposGetContentErrorUnknown(response); }}
}
/// Response for 302.
final class ReposGetContentError302 extends ReposGetContentError {const ReposGetContentError302();

}
/// Response for 304.
final class ReposGetContentError304 extends ReposGetContentError {const ReposGetContentError304();

}
/// Response for 403 (application/json).
final class ReposGetContentError403 extends ReposGetContentError {const ReposGetContentError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposGetContentError404 extends ReposGetContentError {const ReposGetContentError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetContentErrorUnknown extends ReposGetContentError {const ReposGetContentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
