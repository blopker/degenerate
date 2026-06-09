// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /search/labels`.
sealed class SearchLabelsError {const SearchLabelsError();

/// Parse the variant matching the response status code.
factory SearchLabelsError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => SearchLabelsError304.parse(response),
  403 => SearchLabelsError403.parse(response),
  404 => SearchLabelsError404.parse(response),
  422 => SearchLabelsError422.parse(response),
  _ => SearchLabelsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class SearchLabelsError304 extends SearchLabelsError {const SearchLabelsError304();

factory SearchLabelsError304.parse(ApiResponse _) { return const SearchLabelsError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SearchLabelsError304; } 
@override int get hashCode { return (SearchLabelsError304).hashCode; } 
@override String toString() { return 'SearchLabelsError304()'; } 
 }
/// The `403` response.
@immutable final class SearchLabelsError403 extends SearchLabelsError {const SearchLabelsError403(this.data);

factory SearchLabelsError403.parse(ApiResponse response) { return SearchLabelsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchLabelsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchLabelsError403($data)'; } 
 }
/// The `404` response.
@immutable final class SearchLabelsError404 extends SearchLabelsError {const SearchLabelsError404(this.data);

factory SearchLabelsError404.parse(ApiResponse response) { return SearchLabelsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchLabelsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchLabelsError404($data)'; } 
 }
/// The `422` response.
@immutable final class SearchLabelsError422 extends SearchLabelsError {const SearchLabelsError422(this.data);

factory SearchLabelsError422.parse(ApiResponse response) { return SearchLabelsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchLabelsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchLabelsError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SearchLabelsError$Unknown extends SearchLabelsError {const SearchLabelsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchLabelsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SearchLabelsError.unknown($statusCode)'; } 
 }
