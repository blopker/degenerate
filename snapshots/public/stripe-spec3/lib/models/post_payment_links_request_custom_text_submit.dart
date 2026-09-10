// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param7.dart';@immutable final class PostPaymentLinksRequestCustomTextSubmitVariant2 {const PostPaymentLinksRequestCustomTextSubmitVariant2._(this.value);

factory PostPaymentLinksRequestCustomTextSubmitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestCustomTextSubmitVariant2._(json),
}; }

static const PostPaymentLinksRequestCustomTextSubmitVariant2 $empty = PostPaymentLinksRequestCustomTextSubmitVariant2._('');

static const List<PostPaymentLinksRequestCustomTextSubmitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestCustomTextSubmitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestCustomTextSubmitVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksRequestCustomTextSubmit {
  const PostPaymentLinksRequestCustomTextSubmit({this.customTextPositionParam7 = const Omittable.absent(),
this.postPaymentLinksRequestCustomTextSubmitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksRequestCustomTextSubmit._({required this.rawValue, required this.customTextPositionParam7,
required this.postPaymentLinksRequestCustomTextSubmitVariant2,});
  factory PostPaymentLinksRequestCustomTextSubmit.fromJson(Object? json) => PostPaymentLinksRequestCustomTextSubmit._(
    rawValue: Omittable(json),
    customTextPositionParam7: parseAnyOfVariant<CustomTextPositionParam7>(json, (value) => CustomTextPositionParam7.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksRequestCustomTextSubmitVariant2: parseAnyOfVariant<PostPaymentLinksRequestCustomTextSubmitVariant2>(json, (value) => PostPaymentLinksRequestCustomTextSubmitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam7> customTextPositionParam7;
final Omittable<PostPaymentLinksRequestCustomTextSubmitVariant2> postPaymentLinksRequestCustomTextSubmitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam7.isPresent || postPaymentLinksRequestCustomTextSubmitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam7.isPresent) customTextPositionParam7.value?.toJson(),
if (postPaymentLinksRequestCustomTextSubmitVariant2.isPresent) postPaymentLinksRequestCustomTextSubmitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksRequestCustomTextSubmit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksRequestCustomTextSubmit(${toJson()})';
}
