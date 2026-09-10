// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param4.dart';@immutable final class PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2 {const PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2._(this.value);

factory PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2._(json),
};}

static const PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2 $empty = PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2._('');

static const List<PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance {
  const PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance({this.customTextPositionParam4 = const Omittable.absent(),
this.postCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance._({required this.rawValue, required this.customTextPositionParam4,
required this.postCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2,});
  factory PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance.fromJson(Object? json) => PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance._(
    rawValue: Omittable(json),
    customTextPositionParam4: parseAnyOfVariant<CustomTextPositionParam4>(json, (value) => CustomTextPositionParam4.fromJson(value! as Map<String, dynamic>)),
postCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2>(json, (value) => PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam4> customTextPositionParam4;
final Omittable<PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2> postCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam4.isPresent || postCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam4.isPresent) customTextPositionParam4.value?.toJson(),
if (postCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2.isPresent) postCheckoutSessionsRequestCustomTextTermsOfServiceAcceptanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestCustomTextTermsOfServiceAcceptance(${toJson()})';
}
