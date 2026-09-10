// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param12.dart';@immutable final class PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2 {const PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2 $empty = PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2($value)';}
}

@immutable
final class PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance {
  const PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance({this.customTextPositionParam12 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance._({required this.rawValue, required this.customTextPositionParam12,
required this.postPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2,});
  factory PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance._(
    rawValue: Omittable(json),
    customTextPositionParam12: parseAnyOfVariant<CustomTextPositionParam12>(json, (value) => CustomTextPositionParam12.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam12> customTextPositionParam12;
final Omittable<PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2> postPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam12.isPresent || postPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam12.isPresent) customTextPositionParam12.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2.isPresent) postPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestCustomTextTermsOfServiceAcceptance(${toJson()})';
}
