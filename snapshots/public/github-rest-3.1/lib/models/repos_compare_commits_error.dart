// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_compare_commits_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/compare/{basehead}`.
sealed class ReposCompareCommitsError {const ReposCompareCommitsError();

/// Parse the variant matching the response status code.
factory ReposCompareCommitsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposCompareCommitsError404.parse(response),
  500 => ReposCompareCommitsError500.parse(response),
  503 => ReposCompareCommitsError503.parse(response),
  _ => ReposCompareCommitsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposCompareCommitsError404 extends ReposCompareCommitsError {const ReposCompareCommitsError404(this.data);

factory ReposCompareCommitsError404.parse(ApiResponse response) { return ReposCompareCommitsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCompareCommitsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCompareCommitsError404($data)'; } 
 }
/// The `500` response.
@immutable final class ReposCompareCommitsError500 extends ReposCompareCommitsError {const ReposCompareCommitsError500(this.data);

factory ReposCompareCommitsError500.parse(ApiResponse response) { return ReposCompareCommitsError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCompareCommitsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCompareCommitsError500($data)'; } 
 }
/// The `503` response.
@immutable final class ReposCompareCommitsError503 extends ReposCompareCommitsError {const ReposCompareCommitsError503(this.data);

factory ReposCompareCommitsError503.parse(ApiResponse response) { return ReposCompareCommitsError503(ReposCompareCommitsResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ReposCompareCommitsResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCompareCommitsError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCompareCommitsError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCompareCommitsError$Unknown extends ReposCompareCommitsError {const ReposCompareCommitsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCompareCommitsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCompareCommitsError.unknown($statusCode)'; } 
 }
