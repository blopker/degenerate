// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestUrlVariant2 {const PostProductsIdRequestUrlVariant2._(this.value);

factory PostProductsIdRequestUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestUrlVariant2._(json),
};}

static const PostProductsIdRequestUrlVariant2 $empty = PostProductsIdRequestUrlVariant2._('');

static const List<PostProductsIdRequestUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostProductsIdRequestUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostProductsIdRequestUrlVariant2($value)';}
}
/// A URL of a publicly-accessible webpage for this product.
@immutable
final class PostProductsIdRequestUrl {
  const PostProductsIdRequestUrl({this.string = const Omittable.absent(),
this.postProductsIdRequestUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsIdRequestUrl._({required this.rawValue, required this.string,
required this.postProductsIdRequestUrlVariant2,});
  factory PostProductsIdRequestUrl.fromJson(Object? json) => PostProductsIdRequestUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postProductsIdRequestUrlVariant2: parseAnyOfVariant<PostProductsIdRequestUrlVariant2>(json, (value) => PostProductsIdRequestUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostProductsIdRequestUrlVariant2> postProductsIdRequestUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postProductsIdRequestUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postProductsIdRequestUrlVariant2.isPresent) postProductsIdRequestUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsIdRequestUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsIdRequestUrl(${toJson()})';
}
