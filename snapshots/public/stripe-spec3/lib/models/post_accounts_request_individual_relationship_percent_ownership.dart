// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2 {const PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2._(this.value);

factory PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2 $empty = PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2._('');

static const List<PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestIndividualRelationshipPercentOwnership {
  const PostAccountsRequestIndividualRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postAccountsRequestIndividualRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestIndividualRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postAccountsRequestIndividualRelationshipPercentOwnershipVariant2,});
  factory PostAccountsRequestIndividualRelationshipPercentOwnership.fromJson(Object? json) => PostAccountsRequestIndividualRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postAccountsRequestIndividualRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2>(json, (value) => PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostAccountsRequestIndividualRelationshipPercentOwnershipVariant2> postAccountsRequestIndividualRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postAccountsRequestIndividualRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postAccountsRequestIndividualRelationshipPercentOwnershipVariant2.isPresent) postAccountsRequestIndividualRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestIndividualRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestIndividualRelationshipPercentOwnership(${toJson()})';
}
