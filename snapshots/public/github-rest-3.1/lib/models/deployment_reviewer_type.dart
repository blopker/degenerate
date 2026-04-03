// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of reviewer.
@immutable final class DeploymentReviewerType {const DeploymentReviewerType._(this.value);

factory DeploymentReviewerType.fromJson(String json) { return switch (json) {
  'User' => user,
  'Team' => team,
  _ => DeploymentReviewerType._(json),
}; }

static const DeploymentReviewerType user = DeploymentReviewerType._('User');

static const DeploymentReviewerType team = DeploymentReviewerType._('Team');

static const List<DeploymentReviewerType> values = [user, team];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeploymentReviewerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeploymentReviewerType($value)'; } 
 }
