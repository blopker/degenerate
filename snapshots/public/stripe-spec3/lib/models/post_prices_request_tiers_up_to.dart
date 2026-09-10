// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPricesRequestTiersUpToVariant1 {const PostPricesRequestTiersUpToVariant1._(this.value);

factory PostPricesRequestTiersUpToVariant1.fromJson(String json) {return switch (json) {
  'inf' => inf,
  _ => PostPricesRequestTiersUpToVariant1._(json),
};}

static const PostPricesRequestTiersUpToVariant1 inf = PostPricesRequestTiersUpToVariant1._('inf');

static const List<PostPricesRequestTiersUpToVariant1> values = [inf];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPricesRequestTiersUpToVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPricesRequestTiersUpToVariant1($value)';}
}

@immutable
final class PostPricesRequestTiersUpTo {
  const PostPricesRequestTiersUpTo({this.postPricesRequestTiersUpToVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPricesRequestTiersUpTo._({required this.rawValue, required this.postPricesRequestTiersUpToVariant1,
required this.$int,});
  factory PostPricesRequestTiersUpTo.fromJson(Object? json) => PostPricesRequestTiersUpTo._(
    rawValue: Omittable(json),
    postPricesRequestTiersUpToVariant1: parseAnyOfVariant<PostPricesRequestTiersUpToVariant1>(json, (value) => PostPricesRequestTiersUpToVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostPricesRequestTiersUpToVariant1> postPricesRequestTiersUpToVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postPricesRequestTiersUpToVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postPricesRequestTiersUpToVariant1.isPresent) postPricesRequestTiersUpToVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPricesRequestTiersUpTo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPricesRequestTiersUpTo(${toJson()})';
}
