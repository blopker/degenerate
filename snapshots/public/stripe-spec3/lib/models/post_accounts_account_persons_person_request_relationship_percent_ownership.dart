// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2 {const PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2 $empty = PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnership {
  const PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2,});
  factory PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnership.fromJson(Object? json) => PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2>(json, (value) => PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2> postAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2.isPresent) postAccountsAccountPersonsPersonRequestRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsPersonRequestRelationshipPercentOwnership(${toJson()})';
}
