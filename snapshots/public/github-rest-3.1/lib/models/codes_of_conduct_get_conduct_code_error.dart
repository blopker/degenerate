// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /codes_of_conduct/{key}`.
sealed class CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeError();

/// Parse the variant matching the response status code.
factory CodesOfConductGetConductCodeError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodesOfConductGetConductCodeError304.parse(response),
  404 => CodesOfConductGetConductCodeError404.parse(response),
  _ => CodesOfConductGetConductCodeError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodesOfConductGetConductCodeError304 extends CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeError304();

factory CodesOfConductGetConductCodeError304.parse(ApiResponse _) { return const CodesOfConductGetConductCodeError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodesOfConductGetConductCodeError304; } 
@override int get hashCode { return (CodesOfConductGetConductCodeError304).hashCode; } 
@override String toString() { return 'CodesOfConductGetConductCodeError304()'; } 
 }
/// The `404` response.
@immutable final class CodesOfConductGetConductCodeError404 extends CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeError404(this.data);

factory CodesOfConductGetConductCodeError404.parse(ApiResponse response) { return CodesOfConductGetConductCodeError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodesOfConductGetConductCodeError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodesOfConductGetConductCodeError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodesOfConductGetConductCodeError$Unknown extends CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodesOfConductGetConductCodeError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodesOfConductGetConductCodeError.unknown($statusCode)'; } 
 }
