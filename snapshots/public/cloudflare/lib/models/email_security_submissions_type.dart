// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecuritySubmissionsType {const EmailSecuritySubmissionsType._(this.value);

factory EmailSecuritySubmissionsType.fromJson(String json) { return switch (json) {
  'TEAM' => team,
  'USER' => user,
  _ => EmailSecuritySubmissionsType._(json),
}; }

static const EmailSecuritySubmissionsType team = EmailSecuritySubmissionsType._('TEAM');

static const EmailSecuritySubmissionsType user = EmailSecuritySubmissionsType._('USER');

static const List<EmailSecuritySubmissionsType> values = [team, user];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecuritySubmissionsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecuritySubmissionsType($value)'; } 
 }
