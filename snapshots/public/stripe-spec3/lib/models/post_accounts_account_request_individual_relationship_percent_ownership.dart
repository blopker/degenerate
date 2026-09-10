// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2 {const PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2._(this.value);

factory PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2._(json),
};}

static const PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2 $empty = PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2._('');

static const List<PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2($value)';}
}

@immutable
final class PostAccountsAccountRequestIndividualRelationshipPercentOwnership {
  const PostAccountsAccountRequestIndividualRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestIndividualRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2,});
  factory PostAccountsAccountRequestIndividualRelationshipPercentOwnership.fromJson(Object? json) => PostAccountsAccountRequestIndividualRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2>(json, (value) => PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2> postAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2.isPresent) postAccountsAccountRequestIndividualRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestIndividualRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestIndividualRelationshipPercentOwnership(${toJson()})';
}
