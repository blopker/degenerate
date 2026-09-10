// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'search_repos_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SearchReposError {const SearchReposError();

/// Decodes the payload for its declared status and content type.
static SearchReposError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const SearchReposError304();
case 422:
final json = jsonDecode(response.body);
return SearchReposError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return SearchReposError503(SearchReposResponse503.fromJson(json as Map<String, dynamic>));
default:
return SearchReposErrorUnknown(response);
}
}
}
/// Response for 304.
final class SearchReposError304 extends SearchReposError {const SearchReposError304();

}
/// Response for 422 (application/json).
final class SearchReposError422 extends SearchReposError {const SearchReposError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 503 (application/json).
final class SearchReposError503 extends SearchReposError {const SearchReposError503(this.data);

/// The decoded response payload.
final SearchReposResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SearchReposErrorUnknown extends SearchReposError {const SearchReposErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
