// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'search_issues_and_pull_requests_response503.dart';import 'validation_error.dart';/// Error responses of `GET /search/issues`.
sealed class SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError();

/// Parse the variant matching the response status code.
factory SearchIssuesAndPullRequestsError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => SearchIssuesAndPullRequestsError304.parse(response),
  403 => SearchIssuesAndPullRequestsError403.parse(response),
  422 => SearchIssuesAndPullRequestsError422.parse(response),
  503 => SearchIssuesAndPullRequestsError503.parse(response),
  _ => SearchIssuesAndPullRequestsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class SearchIssuesAndPullRequestsError304 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError304();

factory SearchIssuesAndPullRequestsError304.parse(ApiResponse _) { return const SearchIssuesAndPullRequestsError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is SearchIssuesAndPullRequestsError304; } 
@override int get hashCode { return (SearchIssuesAndPullRequestsError304).hashCode; } 
@override String toString() { return 'SearchIssuesAndPullRequestsError304()'; } 
 }
/// The `403` response.
@immutable final class SearchIssuesAndPullRequestsError403 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError403(this.data);

factory SearchIssuesAndPullRequestsError403.parse(ApiResponse response) { return SearchIssuesAndPullRequestsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchIssuesAndPullRequestsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchIssuesAndPullRequestsError403($data)'; } 
 }
/// The `422` response.
@immutable final class SearchIssuesAndPullRequestsError422 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError422(this.data);

factory SearchIssuesAndPullRequestsError422.parse(ApiResponse response) { return SearchIssuesAndPullRequestsError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchIssuesAndPullRequestsError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchIssuesAndPullRequestsError422($data)'; } 
 }
/// The `503` response.
@immutable final class SearchIssuesAndPullRequestsError503 extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError503(this.data);

factory SearchIssuesAndPullRequestsError503.parse(ApiResponse response) { return SearchIssuesAndPullRequestsError503(SearchIssuesAndPullRequestsResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final SearchIssuesAndPullRequestsResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchIssuesAndPullRequestsError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'SearchIssuesAndPullRequestsError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class SearchIssuesAndPullRequestsError$Unknown extends SearchIssuesAndPullRequestsError {const SearchIssuesAndPullRequestsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is SearchIssuesAndPullRequestsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'SearchIssuesAndPullRequestsError.unknown($statusCode)'; } 
 }
