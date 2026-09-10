// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param3.dart';@immutable final class PostCheckoutSessionsRequestCustomTextSubmitVariant2 {const PostCheckoutSessionsRequestCustomTextSubmitVariant2._(this.value);

factory PostCheckoutSessionsRequestCustomTextSubmitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestCustomTextSubmitVariant2._(json),
}; }

static const PostCheckoutSessionsRequestCustomTextSubmitVariant2 $empty = PostCheckoutSessionsRequestCustomTextSubmitVariant2._('');

static const List<PostCheckoutSessionsRequestCustomTextSubmitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomTextSubmitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomTextSubmitVariant2($value)'; } 
 }

@immutable
final class PostCheckoutSessionsRequestCustomTextSubmit {
  const PostCheckoutSessionsRequestCustomTextSubmit({this.customTextPositionParam3 = const Omittable.absent(),
this.postCheckoutSessionsRequestCustomTextSubmitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestCustomTextSubmit._({required this.rawValue, required this.customTextPositionParam3,
required this.postCheckoutSessionsRequestCustomTextSubmitVariant2,});
  factory PostCheckoutSessionsRequestCustomTextSubmit.fromJson(Object? json) => PostCheckoutSessionsRequestCustomTextSubmit._(
    rawValue: Omittable(json),
    customTextPositionParam3: parseAnyOfVariant<CustomTextPositionParam3>(json, (value) => CustomTextPositionParam3.fromJson(value! as Map<String, dynamic>)),
postCheckoutSessionsRequestCustomTextSubmitVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestCustomTextSubmitVariant2>(json, (value) => PostCheckoutSessionsRequestCustomTextSubmitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam3> customTextPositionParam3;
final Omittable<PostCheckoutSessionsRequestCustomTextSubmitVariant2> postCheckoutSessionsRequestCustomTextSubmitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam3.isPresent || postCheckoutSessionsRequestCustomTextSubmitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam3.isPresent) customTextPositionParam3.value?.toJson(),
if (postCheckoutSessionsRequestCustomTextSubmitVariant2.isPresent) postCheckoutSessionsRequestCustomTextSubmitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomTextSubmit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestCustomTextSubmit(${toJson()})';
}
