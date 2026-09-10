// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param5.dart';@immutable final class PostPaymentLinksRequestCustomTextAfterSubmitVariant2 {const PostPaymentLinksRequestCustomTextAfterSubmitVariant2._(this.value);

factory PostPaymentLinksRequestCustomTextAfterSubmitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestCustomTextAfterSubmitVariant2._(json),
}; }

static const PostPaymentLinksRequestCustomTextAfterSubmitVariant2 $empty = PostPaymentLinksRequestCustomTextAfterSubmitVariant2._('');

static const List<PostPaymentLinksRequestCustomTextAfterSubmitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestCustomTextAfterSubmitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestCustomTextAfterSubmitVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksRequestCustomTextAfterSubmit {
  const PostPaymentLinksRequestCustomTextAfterSubmit({this.customTextPositionParam5 = const Omittable.absent(),
this.postPaymentLinksRequestCustomTextAfterSubmitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksRequestCustomTextAfterSubmit._({required this.rawValue, required this.customTextPositionParam5,
required this.postPaymentLinksRequestCustomTextAfterSubmitVariant2,});
  factory PostPaymentLinksRequestCustomTextAfterSubmit.fromJson(Object? json) => PostPaymentLinksRequestCustomTextAfterSubmit._(
    rawValue: Omittable(json),
    customTextPositionParam5: parseAnyOfVariant<CustomTextPositionParam5>(json, (value) => CustomTextPositionParam5.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksRequestCustomTextAfterSubmitVariant2: parseAnyOfVariant<PostPaymentLinksRequestCustomTextAfterSubmitVariant2>(json, (value) => PostPaymentLinksRequestCustomTextAfterSubmitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam5> customTextPositionParam5;
final Omittable<PostPaymentLinksRequestCustomTextAfterSubmitVariant2> postPaymentLinksRequestCustomTextAfterSubmitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam5.isPresent || postPaymentLinksRequestCustomTextAfterSubmitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam5.isPresent) customTextPositionParam5.value?.toJson(),
if (postPaymentLinksRequestCustomTextAfterSubmitVariant2.isPresent) postPaymentLinksRequestCustomTextAfterSubmitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksRequestCustomTextAfterSubmit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksRequestCustomTextAfterSubmit(${toJson()})';
}
