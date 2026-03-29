// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposListCollaboratorsPermission {const ReposListCollaboratorsPermission._(this.value);

factory ReposListCollaboratorsPermission.fromJson(String json) { return switch (json) {
  'pull' => pull,
  'triage' => triage,
  'push' => push,
  'maintain' => maintain,
  'admin' => admin,
  _ => ReposListCollaboratorsPermission._(json),
}; }

static const ReposListCollaboratorsPermission pull = ReposListCollaboratorsPermission._('pull');

static const ReposListCollaboratorsPermission triage = ReposListCollaboratorsPermission._('triage');

static const ReposListCollaboratorsPermission push = ReposListCollaboratorsPermission._('push');

static const ReposListCollaboratorsPermission maintain = ReposListCollaboratorsPermission._('maintain');

static const ReposListCollaboratorsPermission admin = ReposListCollaboratorsPermission._('admin');

static const List<ReposListCollaboratorsPermission> values = [pull, triage, push, maintain, admin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListCollaboratorsPermission && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposListCollaboratorsPermission($value)'; } 
 }
