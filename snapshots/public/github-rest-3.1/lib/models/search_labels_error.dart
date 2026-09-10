// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SearchLabelsError {const SearchLabelsError();

/// Decodes the payload for its declared status and content type.
static SearchLabelsError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const SearchLabelsError304();
case 403:
final json = jsonDecode(response.body);
return SearchLabelsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return SearchLabelsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return SearchLabelsError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return SearchLabelsErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class SearchLabelsError304 extends SearchLabelsError {const SearchLabelsError304();

 }
/// Response for 403 (application/json).
final class SearchLabelsError403 extends SearchLabelsError {const SearchLabelsError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class SearchLabelsError404 extends SearchLabelsError {const SearchLabelsError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class SearchLabelsError422 extends SearchLabelsError {const SearchLabelsError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SearchLabelsErrorUnknown extends SearchLabelsError {const SearchLabelsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
