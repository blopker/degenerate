// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param.dart';@immutable final class PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2 {const PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2._(this.value);

factory PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2._(json),
};}

static const PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2 $empty = PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2._('');

static const List<PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestCustomTextAfterSubmit {
  const PostCheckoutSessionsRequestCustomTextAfterSubmit({this.customTextPositionParam = const Omittable.absent(),
this.postCheckoutSessionsRequestCustomTextAfterSubmitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestCustomTextAfterSubmit._({required this.rawValue, required this.customTextPositionParam,
required this.postCheckoutSessionsRequestCustomTextAfterSubmitVariant2,});
  factory PostCheckoutSessionsRequestCustomTextAfterSubmit.fromJson(Object? json) => PostCheckoutSessionsRequestCustomTextAfterSubmit._(
    rawValue: Omittable(json),
    customTextPositionParam: parseAnyOfVariant<CustomTextPositionParam>(json, (value) => CustomTextPositionParam.fromJson(value! as Map<String, dynamic>)),
postCheckoutSessionsRequestCustomTextAfterSubmitVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2>(json, (value) => PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam> customTextPositionParam;
final Omittable<PostCheckoutSessionsRequestCustomTextAfterSubmitVariant2> postCheckoutSessionsRequestCustomTextAfterSubmitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam.isPresent || postCheckoutSessionsRequestCustomTextAfterSubmitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam.isPresent) customTextPositionParam.value?.toJson(),
if (postCheckoutSessionsRequestCustomTextAfterSubmitVariant2.isPresent) postCheckoutSessionsRequestCustomTextAfterSubmitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomTextAfterSubmit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestCustomTextAfterSubmit(${toJson()})';
}
