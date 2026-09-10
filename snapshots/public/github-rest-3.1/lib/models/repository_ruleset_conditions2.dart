// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'org_ruleset_conditions.dart';import 'repository_id_and_ref_name.dart';import 'repository_name_and_ref_name.dart';import 'repository_property_and_ref_name.dart';import 'repository_ruleset_conditions.dart';
@immutable
final class RepositoryRulesetConditions2 {
  const RepositoryRulesetConditions2({this.repositoryRulesetConditions = const Omittable.absent(),
this.orgRulesetConditions = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const RepositoryRulesetConditions2._({required this.rawValue, required this.repositoryRulesetConditions,
required this.orgRulesetConditions,});
  factory RepositoryRulesetConditions2.fromJson(Object? json) => RepositoryRulesetConditions2._(
    rawValue: Omittable(json),
    repositoryRulesetConditions: parseAnyOfVariant<RepositoryRulesetConditions>(json, (value) => RepositoryRulesetConditions.fromJson(value! as Map<String, dynamic>)),
orgRulesetConditions: parseAnyOfVariant<OrgRulesetConditions>(json, (value) => OneOf3.parse(value, fromA: (v) => RepositoryNameAndRefName.fromJson(v as Map<String, dynamic>), fromB: (v) => RepositoryIdAndRefName.fromJson(v as Map<String, dynamic>), fromC: (v) => RepositoryPropertyAndRefName.fromJson(v as Map<String, dynamic>),)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RepositoryRulesetConditions> repositoryRulesetConditions;
final Omittable<OrgRulesetConditions> orgRulesetConditions;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || repositoryRulesetConditions.isPresent || orgRulesetConditions.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (repositoryRulesetConditions.isPresent) repositoryRulesetConditions.value?.toJson(),
if (orgRulesetConditions.isPresent) orgRulesetConditions.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is RepositoryRulesetConditions2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'RepositoryRulesetConditions2(${toJson()})';
}
