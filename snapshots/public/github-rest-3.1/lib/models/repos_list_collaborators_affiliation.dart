// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposListCollaboratorsAffiliation {const ReposListCollaboratorsAffiliation._(this.value);

factory ReposListCollaboratorsAffiliation.fromJson(String json) { return switch (json) {
  'outside' => outside,
  'direct' => direct,
  'all' => all,
  _ => ReposListCollaboratorsAffiliation._(json),
}; }

static const ReposListCollaboratorsAffiliation outside = ReposListCollaboratorsAffiliation._('outside');

static const ReposListCollaboratorsAffiliation direct = ReposListCollaboratorsAffiliation._('direct');

static const ReposListCollaboratorsAffiliation all = ReposListCollaboratorsAffiliation._('all');

static const List<ReposListCollaboratorsAffiliation> values = [outside, direct, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListCollaboratorsAffiliation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposListCollaboratorsAffiliation($value)'; } 
 }
