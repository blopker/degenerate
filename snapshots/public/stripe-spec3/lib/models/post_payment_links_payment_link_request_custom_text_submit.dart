// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param11.dart';@immutable final class PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2 {const PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2 $empty = PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestCustomTextSubmit {
  const PostPaymentLinksPaymentLinkRequestCustomTextSubmit({this.customTextPositionParam11 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestCustomTextSubmit._({required this.rawValue, required this.customTextPositionParam11,
required this.postPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2,});
  factory PostPaymentLinksPaymentLinkRequestCustomTextSubmit.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestCustomTextSubmit._(
    rawValue: Omittable(json),
    customTextPositionParam11: parseAnyOfVariant<CustomTextPositionParam11>(json, (value) => CustomTextPositionParam11.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam11> customTextPositionParam11;
final Omittable<PostPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2> postPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam11.isPresent || postPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam11.isPresent) customTextPositionParam11.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2.isPresent) postPaymentLinksPaymentLinkRequestCustomTextSubmitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestCustomTextSubmit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestCustomTextSubmit(${toJson()})';
}
