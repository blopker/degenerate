// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_delete_response403.dart';/// Error responses of `DELETE /repos/{owner}/{repo}`.
sealed class ReposDeleteError {const ReposDeleteError();

/// Parse the variant matching the response status code.
factory ReposDeleteError.parse(ApiResponse response) { return switch (response.statusCode) {
  307 => ReposDeleteError307.parse(response),
  403 => ReposDeleteError403.parse(response),
  404 => ReposDeleteError404.parse(response),
  409 => ReposDeleteError409.parse(response),
  _ => ReposDeleteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `307` response.
@immutable final class ReposDeleteError307 extends ReposDeleteError {const ReposDeleteError307(this.data);

factory ReposDeleteError307.parse(ApiResponse response) { return ReposDeleteError307(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteError307 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteError307($data)'; } 
 }
/// The `403` response.
@immutable final class ReposDeleteError403 extends ReposDeleteError {const ReposDeleteError403(this.data);

factory ReposDeleteError403.parse(ApiResponse response) { return ReposDeleteError403(ReposDeleteResponse403.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ReposDeleteResponse403 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteError403($data)'; } 
 }
/// The `404` response.
@immutable final class ReposDeleteError404 extends ReposDeleteError {const ReposDeleteError404(this.data);

factory ReposDeleteError404.parse(ApiResponse response) { return ReposDeleteError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteError404($data)'; } 
 }
/// The `409` response.
@immutable final class ReposDeleteError409 extends ReposDeleteError {const ReposDeleteError409(this.data);

factory ReposDeleteError409.parse(ApiResponse response) { return ReposDeleteError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteError409($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposDeleteError$Unknown extends ReposDeleteError {const ReposDeleteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposDeleteError.unknown($statusCode)'; } 
 }
