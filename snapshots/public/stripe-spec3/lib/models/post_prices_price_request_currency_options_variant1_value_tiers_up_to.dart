// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1 {const PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1._(this.value);

factory PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1.fromJson(String json) {return switch (json) {
  'inf' => inf,
  _ => PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1._(json),
};}

static const PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1 inf = PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1._('inf');

static const List<PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1> values = [inf];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1($value)';}
}

@immutable
final class PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo {
  const PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo({this.postPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo._({required this.rawValue, required this.postPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1,
required this.$int,});
  factory PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo.fromJson(Object? json) => PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo._(
    rawValue: Omittable(json),
    postPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1: parseAnyOfVariant<PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1>(json, (value) => PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1> postPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1.isPresent) postPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpToVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPricesPriceRequestCurrencyOptionsVariant1ValueTiersUpTo(${toJson()})';
}
