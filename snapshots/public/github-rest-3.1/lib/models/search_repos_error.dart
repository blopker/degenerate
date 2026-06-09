// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'search_repos_response503.dart';import 'validation_error.dart';/// Error responses of `GET /search/repositories`.
sealed class SearchReposError {const SearchReposError();

/// Parse the variant matching the response status code.
factory SearchReposError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => SearchReposError304.parse(response),
  422 => SearchReposError422.parse(response),
  503 => SearchReposError503.parse(response),
  _ => SearchReposError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class SearchReposError304 extends SearchReposError {const SearchReposError304();

factory SearchReposError304.parse(ApiResponse _) { return const SearchReposError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SearchReposError304; } 
@override int get hashCode { return (SearchReposError304).hashCode; } 
@override String toString() { return 'SearchReposError304()'; } 
 }
/// The `422` response.
@immutable final class SearchReposError422 extends SearchReposError {const SearchReposError422(this.data);

factory SearchReposError422.parse(ApiResponse response) { return SearchReposError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchReposError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchReposError422($data)'; } 
 }
/// The `503` response.
@immutable final class SearchReposError503 extends SearchReposError {const SearchReposError503(this.data);

factory SearchReposError503.parse(ApiResponse response) { return SearchReposError503(SearchReposResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SearchReposResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchReposError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchReposError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SearchReposError$Unknown extends SearchReposError {const SearchReposError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchReposError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SearchReposError.unknown($statusCode)'; } 
 }
