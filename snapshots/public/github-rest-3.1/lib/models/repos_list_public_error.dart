// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'validation_error.dart';/// Error responses of `GET /repositories`.
sealed class ReposListPublicError {const ReposListPublicError();

/// Parse the variant matching the response status code.
factory ReposListPublicError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ReposListPublicError304.parse(response),
  422 => ReposListPublicError422.parse(response),
  _ => ReposListPublicError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ReposListPublicError304 extends ReposListPublicError {const ReposListPublicError304();

factory ReposListPublicError304.parse(ApiResponse _) { return const ReposListPublicError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposListPublicError304; } 
@override int get hashCode { return (ReposListPublicError304).hashCode; } 
@override String toString() { return 'ReposListPublicError304()'; } 
 }
/// The `422` response.
@immutable final class ReposListPublicError422 extends ReposListPublicError {const ReposListPublicError422(this.data);

factory ReposListPublicError422.parse(ApiResponse response) { return ReposListPublicError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListPublicError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListPublicError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposListPublicError$Unknown extends ReposListPublicError {const ReposListPublicError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListPublicError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposListPublicError.unknown($statusCode)'; } 
 }
