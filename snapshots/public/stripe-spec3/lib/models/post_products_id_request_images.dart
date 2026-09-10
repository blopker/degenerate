// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestImagesVariant2 {const PostProductsIdRequestImagesVariant2._(this.value);

factory PostProductsIdRequestImagesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestImagesVariant2._(json),
};}

static const PostProductsIdRequestImagesVariant2 $empty = PostProductsIdRequestImagesVariant2._('');

static const List<PostProductsIdRequestImagesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostProductsIdRequestImagesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostProductsIdRequestImagesVariant2($value)';}
}
/// A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
@immutable
final class PostProductsIdRequestImages {
  const PostProductsIdRequestImages({this.listString = const Omittable.absent(),
this.postProductsIdRequestImagesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsIdRequestImages._({required this.rawValue, required this.listString,
required this.postProductsIdRequestImagesVariant2,});
  factory PostProductsIdRequestImages.fromJson(Object? json) => PostProductsIdRequestImages._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postProductsIdRequestImagesVariant2: parseAnyOfVariant<PostProductsIdRequestImagesVariant2>(json, (value) => PostProductsIdRequestImagesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostProductsIdRequestImagesVariant2> postProductsIdRequestImagesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postProductsIdRequestImagesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postProductsIdRequestImagesVariant2.isPresent) postProductsIdRequestImagesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsIdRequestImages && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsIdRequestImages(${toJson()})';
}
