// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/pages`.
sealed class ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError();

/// Parse the variant matching the response status code.
factory ReposUpdateInformationAboutPagesSiteError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => ReposUpdateInformationAboutPagesSiteError400.parse(response),
  409 => ReposUpdateInformationAboutPagesSiteError409.parse(response),
  422 => ReposUpdateInformationAboutPagesSiteError422.parse(response),
  _ => ReposUpdateInformationAboutPagesSiteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class ReposUpdateInformationAboutPagesSiteError400 extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError400(this.data);

factory ReposUpdateInformationAboutPagesSiteError400.parse(ApiResponse response) { return ReposUpdateInformationAboutPagesSiteError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateInformationAboutPagesSiteError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateInformationAboutPagesSiteError400($data)'; } 
 }
/// The `409` response.
@immutable final class ReposUpdateInformationAboutPagesSiteError409 extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError409(this.data);

factory ReposUpdateInformationAboutPagesSiteError409.parse(ApiResponse response) { return ReposUpdateInformationAboutPagesSiteError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateInformationAboutPagesSiteError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateInformationAboutPagesSiteError409($data)'; } 
 }
/// The `422` response.
@immutable final class ReposUpdateInformationAboutPagesSiteError422 extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError422(this.data);

factory ReposUpdateInformationAboutPagesSiteError422.parse(ApiResponse response) { return ReposUpdateInformationAboutPagesSiteError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateInformationAboutPagesSiteError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposUpdateInformationAboutPagesSiteError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposUpdateInformationAboutPagesSiteError$Unknown extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposUpdateInformationAboutPagesSiteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposUpdateInformationAboutPagesSiteError.unknown($statusCode)'; } 
 }
