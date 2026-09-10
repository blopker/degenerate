// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2 {const PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2._(this.value);

factory PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2 $empty = PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2._('');

static const List<PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestAccountIndividualRelationshipPercentOwnership {
  const PostTokensRequestAccountIndividualRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestAccountIndividualRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2,});
  factory PostTokensRequestAccountIndividualRelationshipPercentOwnership.fromJson(Object? json) => PostTokensRequestAccountIndividualRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2>(json, (value) => PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2> postTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2.isPresent) postTokensRequestAccountIndividualRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestAccountIndividualRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestAccountIndividualRelationshipPercentOwnership(${toJson()})';
}
