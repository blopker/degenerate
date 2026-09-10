// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2 {const PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2._(json),
};}

static const PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2 $empty = PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2($value)';}
}

@immutable
final class PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership {
  const PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2,});
  factory PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership.fromJson(Object? json) => PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2>(json, (value) => PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2> postAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2.isPresent) postAccountsAccountPeoplePersonRequestRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeoplePersonRequestRelationshipPercentOwnership(${toJson()})';
}
