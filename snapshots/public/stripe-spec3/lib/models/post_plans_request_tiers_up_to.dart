// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPlansRequestTiersUpToVariant1 {const PostPlansRequestTiersUpToVariant1._(this.value);

factory PostPlansRequestTiersUpToVariant1.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => PostPlansRequestTiersUpToVariant1._(json),
}; }

static const PostPlansRequestTiersUpToVariant1 inf = PostPlansRequestTiersUpToVariant1._('inf');

static const List<PostPlansRequestTiersUpToVariant1> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPlansRequestTiersUpToVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPlansRequestTiersUpToVariant1($value)'; } 
 }

@immutable
final class PostPlansRequestTiersUpTo {
  const PostPlansRequestTiersUpTo({this.postPlansRequestTiersUpToVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPlansRequestTiersUpTo._({required this.rawValue, required this.postPlansRequestTiersUpToVariant1,
required this.$int,});
  factory PostPlansRequestTiersUpTo.fromJson(Object? json) => PostPlansRequestTiersUpTo._(
    rawValue: Omittable(json),
    postPlansRequestTiersUpToVariant1: parseAnyOfVariant<PostPlansRequestTiersUpToVariant1>(json, (value) => PostPlansRequestTiersUpToVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostPlansRequestTiersUpToVariant1> postPlansRequestTiersUpToVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postPlansRequestTiersUpToVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postPlansRequestTiersUpToVariant1.isPresent) postPlansRequestTiersUpToVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPlansRequestTiersUpTo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPlansRequestTiersUpTo(${toJson()})';
}
