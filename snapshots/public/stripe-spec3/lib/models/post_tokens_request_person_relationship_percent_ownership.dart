// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonRelationshipPercentOwnershipVariant2 {const PostTokensRequestPersonRelationshipPercentOwnershipVariant2._(this.value);

factory PostTokensRequestPersonRelationshipPercentOwnershipVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonRelationshipPercentOwnershipVariant2._(json),
};}

static const PostTokensRequestPersonRelationshipPercentOwnershipVariant2 $empty = PostTokensRequestPersonRelationshipPercentOwnershipVariant2._('');

static const List<PostTokensRequestPersonRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTokensRequestPersonRelationshipPercentOwnershipVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTokensRequestPersonRelationshipPercentOwnershipVariant2($value)';}
}

@immutable
final class PostTokensRequestPersonRelationshipPercentOwnership {
  const PostTokensRequestPersonRelationshipPercentOwnership({this.$double = const Omittable.absent(),
this.postTokensRequestPersonRelationshipPercentOwnershipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonRelationshipPercentOwnership._({required this.rawValue, required this.$double,
required this.postTokensRequestPersonRelationshipPercentOwnershipVariant2,});
  factory PostTokensRequestPersonRelationshipPercentOwnership.fromJson(Object? json) => PostTokensRequestPersonRelationshipPercentOwnership._(
    rawValue: Omittable(json),
    $double: parseAnyOfVariant<double>(json, (value) => (value! as num).toDouble()),
postTokensRequestPersonRelationshipPercentOwnershipVariant2: parseAnyOfVariant<PostTokensRequestPersonRelationshipPercentOwnershipVariant2>(json, (value) => PostTokensRequestPersonRelationshipPercentOwnershipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<double> $double;
final Omittable<PostTokensRequestPersonRelationshipPercentOwnershipVariant2> postTokensRequestPersonRelationshipPercentOwnershipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $double.isPresent || postTokensRequestPersonRelationshipPercentOwnershipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($double.isPresent) $double.value,
if (postTokensRequestPersonRelationshipPercentOwnershipVariant2.isPresent) postTokensRequestPersonRelationshipPercentOwnershipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonRelationshipPercentOwnership && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonRelationshipPercentOwnership(${toJson()})';
}
