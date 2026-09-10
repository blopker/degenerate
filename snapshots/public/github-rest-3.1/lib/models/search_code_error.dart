// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'search_code_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SearchCodeError {const SearchCodeError();

/// Decodes the payload for its declared status and content type.
static SearchCodeError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const SearchCodeError304();
case 403:
final json = jsonDecode(response.body);
return SearchCodeError403(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return SearchCodeError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return SearchCodeError503(SearchCodeResponse503.fromJson(json as Map<String, dynamic>));
default:
return SearchCodeErrorUnknown(response);
}
}
}
/// Response for 304.
final class SearchCodeError304 extends SearchCodeError {const SearchCodeError304();

}
/// Response for 403 (application/json).
final class SearchCodeError403 extends SearchCodeError {const SearchCodeError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class SearchCodeError422 extends SearchCodeError {const SearchCodeError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 503 (application/json).
final class SearchCodeError503 extends SearchCodeError {const SearchCodeError503(this.data);

/// The decoded response payload.
final SearchCodeResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SearchCodeErrorUnknown extends SearchCodeError {const SearchCodeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
