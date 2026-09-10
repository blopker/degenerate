// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param10.dart';@immutable final class PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2 {const PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2 $empty = PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2($value)';}
}

@immutable
final class PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress {
  const PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress({this.customTextPositionParam10 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress._({required this.rawValue, required this.customTextPositionParam10,
required this.postPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2,});
  factory PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress._(
    rawValue: Omittable(json),
    customTextPositionParam10: parseAnyOfVariant<CustomTextPositionParam10>(json, (value) => CustomTextPositionParam10.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam10> customTextPositionParam10;
final Omittable<PostPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2> postPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam10.isPresent || postPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam10.isPresent) customTextPositionParam10.value?.toJson(),
if (postPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2.isPresent) postPaymentLinksPaymentLinkRequestCustomTextShippingAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestCustomTextShippingAddress(${toJson()})';
}
