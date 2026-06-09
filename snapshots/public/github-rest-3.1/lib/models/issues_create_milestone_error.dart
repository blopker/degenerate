// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/milestones`.
sealed class IssuesCreateMilestoneError {const IssuesCreateMilestoneError();

/// Parse the variant matching the response status code.
factory IssuesCreateMilestoneError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => IssuesCreateMilestoneError404.parse(response),
  422 => IssuesCreateMilestoneError422.parse(response),
  _ => IssuesCreateMilestoneError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class IssuesCreateMilestoneError404 extends IssuesCreateMilestoneError {const IssuesCreateMilestoneError404(this.data);

factory IssuesCreateMilestoneError404.parse(ApiResponse response) { return IssuesCreateMilestoneError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateMilestoneError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateMilestoneError404($data)'; } 
 }
/// The `422` response.
@immutable final class IssuesCreateMilestoneError422 extends IssuesCreateMilestoneError {const IssuesCreateMilestoneError422(this.data);

factory IssuesCreateMilestoneError422.parse(ApiResponse response) { return IssuesCreateMilestoneError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateMilestoneError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesCreateMilestoneError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesCreateMilestoneError$Unknown extends IssuesCreateMilestoneError {const IssuesCreateMilestoneError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesCreateMilestoneError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesCreateMilestoneError.unknown($statusCode)'; } 
 }
