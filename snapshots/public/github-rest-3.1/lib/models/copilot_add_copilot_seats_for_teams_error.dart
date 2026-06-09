// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `POST /orgs/{org}/copilot/billing/selected_teams`.
sealed class CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError();

/// Parse the variant matching the response status code.
factory CopilotAddCopilotSeatsForTeamsError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => CopilotAddCopilotSeatsForTeamsError401.parse(response),
  403 => CopilotAddCopilotSeatsForTeamsError403.parse(response),
  404 => CopilotAddCopilotSeatsForTeamsError404.parse(response),
  422 => CopilotAddCopilotSeatsForTeamsError422.parse(response),
  500 => CopilotAddCopilotSeatsForTeamsError500.parse(response),
  _ => CopilotAddCopilotSeatsForTeamsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class CopilotAddCopilotSeatsForTeamsError401 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError401(this.data);

factory CopilotAddCopilotSeatsForTeamsError401.parse(ApiResponse response) { return CopilotAddCopilotSeatsForTeamsError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForTeamsError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForTeamsError401($data)'; } 
 }
/// The `403` response.
@immutable final class CopilotAddCopilotSeatsForTeamsError403 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError403(this.data);

factory CopilotAddCopilotSeatsForTeamsError403.parse(ApiResponse response) { return CopilotAddCopilotSeatsForTeamsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForTeamsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForTeamsError403($data)'; } 
 }
/// The `404` response.
@immutable final class CopilotAddCopilotSeatsForTeamsError404 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError404(this.data);

factory CopilotAddCopilotSeatsForTeamsError404.parse(ApiResponse response) { return CopilotAddCopilotSeatsForTeamsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForTeamsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForTeamsError404($data)'; } 
 }
/// The `422` response.
@immutable final class CopilotAddCopilotSeatsForTeamsError422 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError422();

factory CopilotAddCopilotSeatsForTeamsError422.parse(ApiResponse _) { return const CopilotAddCopilotSeatsForTeamsError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CopilotAddCopilotSeatsForTeamsError422; } 
@override int get hashCode { return (CopilotAddCopilotSeatsForTeamsError422).hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForTeamsError422()'; } 
 }
/// The `500` response.
@immutable final class CopilotAddCopilotSeatsForTeamsError500 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError500(this.data);

factory CopilotAddCopilotSeatsForTeamsError500.parse(ApiResponse response) { return CopilotAddCopilotSeatsForTeamsError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForTeamsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CopilotAddCopilotSeatsForTeamsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CopilotAddCopilotSeatsForTeamsError$Unknown extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotAddCopilotSeatsForTeamsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CopilotAddCopilotSeatsForTeamsError.unknown($statusCode)'; } 
 }
