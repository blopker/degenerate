// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_id.dart';@immutable final class OrganizationListOrganizationsParentIdVariant2 {const OrganizationListOrganizationsParentIdVariant2._(this.value);

factory OrganizationListOrganizationsParentIdVariant2.fromJson(String json) { return switch (json) {
  'null' => $null,
  _ => OrganizationListOrganizationsParentIdVariant2._(json),
}; }

static const OrganizationListOrganizationsParentIdVariant2 $null = OrganizationListOrganizationsParentIdVariant2._('null');

static const List<OrganizationListOrganizationsParentIdVariant2> values = [$null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationListOrganizationsParentIdVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationListOrganizationsParentIdVariant2($value)'; } 
 }

@immutable
final class OrganizationListOrganizationsParentId {
  const OrganizationListOrganizationsParentId({this.organizationId = const Omittable.absent(),
this.organizationListOrganizationsParentIdVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const OrganizationListOrganizationsParentId._({required this.rawValue, required this.organizationId,
required this.organizationListOrganizationsParentIdVariant2,});
  factory OrganizationListOrganizationsParentId.fromJson(Object? json) => OrganizationListOrganizationsParentId._(
    rawValue: Omittable(json),
    organizationId: parseAnyOfVariant<OrganizationId>(json, (value) => OrganizationId.fromJson(value! as String)),
organizationListOrganizationsParentIdVariant2: parseAnyOfVariant<OrganizationListOrganizationsParentIdVariant2>(json, (value) => OrganizationListOrganizationsParentIdVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<OrganizationId> organizationId;
final Omittable<OrganizationListOrganizationsParentIdVariant2> organizationListOrganizationsParentIdVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => organizationId.isPresent || organizationListOrganizationsParentIdVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (organizationId.isPresent) organizationId.value?.toJson(),
if (organizationListOrganizationsParentIdVariant2.isPresent) organizationListOrganizationsParentIdVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is OrganizationListOrganizationsParentId && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'OrganizationListOrganizationsParentId(${toJson()})';
}
