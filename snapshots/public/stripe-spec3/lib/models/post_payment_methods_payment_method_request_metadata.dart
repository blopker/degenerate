// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodsPaymentMethodRequestMetadataVariant2 {const PostPaymentMethodsPaymentMethodRequestMetadataVariant2._(this.value);

factory PostPaymentMethodsPaymentMethodRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentMethodsPaymentMethodRequestMetadataVariant2._(json),
};}

static const PostPaymentMethodsPaymentMethodRequestMetadataVariant2 $empty = PostPaymentMethodsPaymentMethodRequestMetadataVariant2._('');

static const List<PostPaymentMethodsPaymentMethodRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentMethodsPaymentMethodRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentMethodsPaymentMethodRequestMetadataVariant2($value)';}
}
/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
@immutable
final class PostPaymentMethodsPaymentMethodRequestMetadata {
  const PostPaymentMethodsPaymentMethodRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postPaymentMethodsPaymentMethodRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsPaymentMethodRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postPaymentMethodsPaymentMethodRequestMetadataVariant2,});
  factory PostPaymentMethodsPaymentMethodRequestMetadata.fromJson(Object? json) => PostPaymentMethodsPaymentMethodRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postPaymentMethodsPaymentMethodRequestMetadataVariant2: parseAnyOfVariant<PostPaymentMethodsPaymentMethodRequestMetadataVariant2>(json, (value) => PostPaymentMethodsPaymentMethodRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostPaymentMethodsPaymentMethodRequestMetadataVariant2> postPaymentMethodsPaymentMethodRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postPaymentMethodsPaymentMethodRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postPaymentMethodsPaymentMethodRequestMetadataVariant2.isPresent) postPaymentMethodsPaymentMethodRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsPaymentMethodRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsPaymentMethodRequestMetadata(${toJson()})';
}
