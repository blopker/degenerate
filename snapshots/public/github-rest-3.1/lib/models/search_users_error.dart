// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'search_users_response503.dart';import 'validation_error.dart';/// Error responses of `GET /search/users`.
sealed class SearchUsersError {const SearchUsersError();

/// Parse the variant matching the response status code.
factory SearchUsersError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => SearchUsersError304.parse(response),
  422 => SearchUsersError422.parse(response),
  503 => SearchUsersError503.parse(response),
  _ => SearchUsersError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class SearchUsersError304 extends SearchUsersError {const SearchUsersError304();

factory SearchUsersError304.parse(ApiResponse _) { return const SearchUsersError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SearchUsersError304; } 
@override int get hashCode { return (SearchUsersError304).hashCode; } 
@override String toString() { return 'SearchUsersError304()'; } 
 }
/// The `422` response.
@immutable final class SearchUsersError422 extends SearchUsersError {const SearchUsersError422(this.data);

factory SearchUsersError422.parse(ApiResponse response) { return SearchUsersError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchUsersError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchUsersError422($data)'; } 
 }
/// The `503` response.
@immutable final class SearchUsersError503 extends SearchUsersError {const SearchUsersError503(this.data);

factory SearchUsersError503.parse(ApiResponse response) { return SearchUsersError503(SearchUsersResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SearchUsersResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchUsersError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchUsersError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SearchUsersError$Unknown extends SearchUsersError {const SearchUsersError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchUsersError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SearchUsersError.unknown($statusCode)'; } 
 }
