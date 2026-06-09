// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'search_code_response503.dart';import 'validation_error.dart';/// Error responses of `GET /search/code`.
sealed class SearchCodeError {const SearchCodeError();

/// Parse the variant matching the response status code.
factory SearchCodeError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => SearchCodeError304.parse(response),
  403 => SearchCodeError403.parse(response),
  422 => SearchCodeError422.parse(response),
  503 => SearchCodeError503.parse(response),
  _ => SearchCodeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class SearchCodeError304 extends SearchCodeError {const SearchCodeError304();

factory SearchCodeError304.parse(ApiResponse _) { return const SearchCodeError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SearchCodeError304; } 
@override int get hashCode { return (SearchCodeError304).hashCode; } 
@override String toString() { return 'SearchCodeError304()'; } 
 }
/// The `403` response.
@immutable final class SearchCodeError403 extends SearchCodeError {const SearchCodeError403(this.data);

factory SearchCodeError403.parse(ApiResponse response) { return SearchCodeError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchCodeError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchCodeError403($data)'; } 
 }
/// The `422` response.
@immutable final class SearchCodeError422 extends SearchCodeError {const SearchCodeError422(this.data);

factory SearchCodeError422.parse(ApiResponse response) { return SearchCodeError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchCodeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchCodeError422($data)'; } 
 }
/// The `503` response.
@immutable final class SearchCodeError503 extends SearchCodeError {const SearchCodeError503(this.data);

factory SearchCodeError503.parse(ApiResponse response) { return SearchCodeError503(SearchCodeResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SearchCodeResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchCodeError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchCodeError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SearchCodeError$Unknown extends SearchCodeError {const SearchCodeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchCodeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SearchCodeError.unknown($statusCode)'; } 
 }
