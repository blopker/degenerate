// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'search_users_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SearchUsersError {const SearchUsersError();

/// Decodes the payload for its declared status and content type.
static SearchUsersError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const SearchUsersError304();
case 422:
final json = jsonDecode(response.body);
return SearchUsersError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return SearchUsersError503(SearchUsersResponse503.fromJson(json as Map<String, dynamic>));
default:
return SearchUsersErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class SearchUsersError304 extends SearchUsersError {const SearchUsersError304();

 }
/// Response for 422 (application/json).
final class SearchUsersError422 extends SearchUsersError {const SearchUsersError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// Response for 503 (application/json).
final class SearchUsersError503 extends SearchUsersError {const SearchUsersError503(this.data);

/// The decoded response payload.
final SearchUsersResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SearchUsersErrorUnknown extends SearchUsersError {const SearchUsersErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
