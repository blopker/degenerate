// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostProductsIdRequestDescriptionVariant2 {const PostProductsIdRequestDescriptionVariant2._(this.value);

factory PostProductsIdRequestDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestDescriptionVariant2._(json),
}; }

static const PostProductsIdRequestDescriptionVariant2 $empty = PostProductsIdRequestDescriptionVariant2._('');

static const List<PostProductsIdRequestDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostProductsIdRequestDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostProductsIdRequestDescriptionVariant2($value)'; } 
 }
/// The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
@immutable
final class PostProductsIdRequestDescription {
  const PostProductsIdRequestDescription({this.string = const Omittable.absent(),
this.postProductsIdRequestDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsIdRequestDescription._({required this.rawValue, required this.string,
required this.postProductsIdRequestDescriptionVariant2,});
  factory PostProductsIdRequestDescription.fromJson(Object? json) => PostProductsIdRequestDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postProductsIdRequestDescriptionVariant2: parseAnyOfVariant<PostProductsIdRequestDescriptionVariant2>(json, (value) => PostProductsIdRequestDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostProductsIdRequestDescriptionVariant2> postProductsIdRequestDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postProductsIdRequestDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postProductsIdRequestDescriptionVariant2.isPresent) postProductsIdRequestDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsIdRequestDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsIdRequestDescription(${toJson()})';
}
