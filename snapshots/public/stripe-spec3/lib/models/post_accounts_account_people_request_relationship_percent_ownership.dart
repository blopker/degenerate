// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2 {const PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2._(this.value);

factory PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2 $empty = PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2._('');

static const List<PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPeopleRequestRelationshipPercentOwnership {
  const PostAccountsAccountPeopleRequestRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeopleRequestRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2,});
  factory PostAccountsAccountPeopleRequestRelationshipPercentOwnership.fromJson(Object? json) => PostAccountsAccountPeopleRequestRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2>(json, (value) => PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2> postAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2.isPresent) postAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeopleRequestRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeopleRequestRelationshipPercentOwnership(${toJson()})';
}
