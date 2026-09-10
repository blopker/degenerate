// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'package_dimensions_specs.dart';@immutable final class PostProductsIdRequestPackageDimensionsVariant2 {const PostProductsIdRequestPackageDimensionsVariant2._(this.value);

factory PostProductsIdRequestPackageDimensionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestPackageDimensionsVariant2._(json),
};}

static const PostProductsIdRequestPackageDimensionsVariant2 $empty = PostProductsIdRequestPackageDimensionsVariant2._('');

static const List<PostProductsIdRequestPackageDimensionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostProductsIdRequestPackageDimensionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostProductsIdRequestPackageDimensionsVariant2($value)';}
}
/// The dimensions of this product for shipping purposes.
@immutable
final class PostProductsIdRequestPackageDimensions {
  const PostProductsIdRequestPackageDimensions({this.packageDimensionsSpecs = const Omittable.absent(),
this.postProductsIdRequestPackageDimensionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsIdRequestPackageDimensions._({required this.rawValue, required this.packageDimensionsSpecs,
required this.postProductsIdRequestPackageDimensionsVariant2,});
  factory PostProductsIdRequestPackageDimensions.fromJson(Object? json) => PostProductsIdRequestPackageDimensions._(
    rawValue: Omittable(json),
    packageDimensionsSpecs: parseAnyOfVariant<PackageDimensionsSpecs>(json, (value) => PackageDimensionsSpecs.fromJson(value! as Map<String, dynamic>)),
postProductsIdRequestPackageDimensionsVariant2: parseAnyOfVariant<PostProductsIdRequestPackageDimensionsVariant2>(json, (value) => PostProductsIdRequestPackageDimensionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PackageDimensionsSpecs> packageDimensionsSpecs;
final Omittable<PostProductsIdRequestPackageDimensionsVariant2> postProductsIdRequestPackageDimensionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => packageDimensionsSpecs.isPresent || postProductsIdRequestPackageDimensionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (packageDimensionsSpecs.isPresent) packageDimensionsSpecs.value?.toJson(),
if (postProductsIdRequestPackageDimensionsVariant2.isPresent) postProductsIdRequestPackageDimensionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsIdRequestPackageDimensions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsIdRequestPackageDimensions(${toJson()})';
}
