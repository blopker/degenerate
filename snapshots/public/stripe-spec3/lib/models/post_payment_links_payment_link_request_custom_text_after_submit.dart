// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param9.dart';@immutable final class PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2 {const PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2 $empty = PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit {
  const PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit({this.customTextPositionParam9 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit._({required this.rawValue, required this.customTextPositionParam9,
required this.postPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2,});
  factory PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit._(
    rawValue: Omittable(json),
    customTextPositionParam9: parseAnyOfVariant<CustomTextPositionParam9>(json, (value) => CustomTextPositionParam9.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam9> customTextPositionParam9;
final Omittable<PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2> postPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam9.isPresent || postPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam9.isPresent) customTextPositionParam9.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2.isPresent) postPaymentLinksPaymentLinkRequestCustomTextAfterSubmitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestCustomTextAfterSubmit(${toJson()})';
}
