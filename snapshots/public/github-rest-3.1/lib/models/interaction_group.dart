// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect.
@immutable final class InteractionGroup {const InteractionGroup._(this.value);

factory InteractionGroup.fromJson(String json) { return switch (json) {
  'existing_users' => existingUsers,
  'contributors_only' => contributorsOnly,
  'collaborators_only' => collaboratorsOnly,
  _ => InteractionGroup._(json),
}; }

static const InteractionGroup existingUsers = InteractionGroup._('existing_users');

static const InteractionGroup contributorsOnly = InteractionGroup._('contributors_only');

static const InteractionGroup collaboratorsOnly = InteractionGroup._('collaborators_only');

static const List<InteractionGroup> values = [existingUsers, contributorsOnly, collaboratorsOnly];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InteractionGroup && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InteractionGroup($value)'; } 
 }
