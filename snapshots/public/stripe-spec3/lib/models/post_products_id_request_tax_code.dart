// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestTaxCodeVariant2 {const PostProductsIdRequestTaxCodeVariant2._(this.value);

factory PostProductsIdRequestTaxCodeVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestTaxCodeVariant2._(json),
};}

static const PostProductsIdRequestTaxCodeVariant2 $empty = PostProductsIdRequestTaxCodeVariant2._('');

static const List<PostProductsIdRequestTaxCodeVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostProductsIdRequestTaxCodeVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostProductsIdRequestTaxCodeVariant2($value)';}
}
/// A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
@immutable
final class PostProductsIdRequestTaxCode {
  const PostProductsIdRequestTaxCode({this.string = const Omittable.absent(),
this.postProductsIdRequestTaxCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsIdRequestTaxCode._({required this.rawValue, required this.string,
required this.postProductsIdRequestTaxCodeVariant2,});
  factory PostProductsIdRequestTaxCode.fromJson(Object? json) => PostProductsIdRequestTaxCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postProductsIdRequestTaxCodeVariant2: parseAnyOfVariant<PostProductsIdRequestTaxCodeVariant2>(json, (value) => PostProductsIdRequestTaxCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostProductsIdRequestTaxCodeVariant2> postProductsIdRequestTaxCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postProductsIdRequestTaxCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postProductsIdRequestTaxCodeVariant2.isPresent) postProductsIdRequestTaxCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsIdRequestTaxCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsIdRequestTaxCode(${toJson()})';
}
