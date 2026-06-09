// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'pulls_merge_response405.dart';import 'pulls_merge_response409.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/pulls/{pull_number}/merge`.
sealed class PullsMergeError {const PullsMergeError();

/// Parse the variant matching the response status code.
factory PullsMergeError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsMergeError403.parse(response),
  404 => PullsMergeError404.parse(response),
  405 => PullsMergeError405.parse(response),
  409 => PullsMergeError409.parse(response),
  422 => PullsMergeError422.parse(response),
  _ => PullsMergeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsMergeError403 extends PullsMergeError {const PullsMergeError403(this.data);

factory PullsMergeError403.parse(ApiResponse response) { return PullsMergeError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsMergeError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsMergeError403($data)'; } 
 }
/// The `404` response.
@immutable final class PullsMergeError404 extends PullsMergeError {const PullsMergeError404(this.data);

factory PullsMergeError404.parse(ApiResponse response) { return PullsMergeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsMergeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsMergeError404($data)'; } 
 }
/// The `405` response.
@immutable final class PullsMergeError405 extends PullsMergeError {const PullsMergeError405(this.data);

factory PullsMergeError405.parse(ApiResponse response) { return PullsMergeError405(PullsMergeResponse405.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PullsMergeResponse405 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsMergeError405 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsMergeError405($data)'; } 
 }
/// The `409` response.
@immutable final class PullsMergeError409 extends PullsMergeError {const PullsMergeError409(this.data);

factory PullsMergeError409.parse(ApiResponse response) { return PullsMergeError409(PullsMergeResponse409.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PullsMergeResponse409 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsMergeError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsMergeError409($data)'; } 
 }
/// The `422` response.
@immutable final class PullsMergeError422 extends PullsMergeError {const PullsMergeError422(this.data);

factory PullsMergeError422.parse(ApiResponse response) { return PullsMergeError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsMergeError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsMergeError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsMergeError$Unknown extends PullsMergeError {const PullsMergeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsMergeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsMergeError.unknown($statusCode)'; } 
 }
