// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2 {const PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2._(this.value);

factory PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2 $empty = PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2._('');

static const List<PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPersonsRequestRelationshipPercentOwnership {
  const PostAccountsAccountPersonsRequestRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsRequestRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2,});
  factory PostAccountsAccountPersonsRequestRelationshipPercentOwnership.fromJson(Object? json) => PostAccountsAccountPersonsRequestRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2>(json, (value) => PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2> postAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2.isPresent) postAccountsAccountPersonsRequestRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsRequestRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsRequestRelationshipPercentOwnership(${toJson()})';
}
