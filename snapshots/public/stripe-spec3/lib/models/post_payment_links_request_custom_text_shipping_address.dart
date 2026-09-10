// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param6.dart';@immutable final class PostPaymentLinksRequestCustomTextShippingAddressVariant2 {const PostPaymentLinksRequestCustomTextShippingAddressVariant2._(this.value);

factory PostPaymentLinksRequestCustomTextShippingAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestCustomTextShippingAddressVariant2._(json),
};}

static const PostPaymentLinksRequestCustomTextShippingAddressVariant2 $empty = PostPaymentLinksRequestCustomTextShippingAddressVariant2._('');

static const List<PostPaymentLinksRequestCustomTextShippingAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksRequestCustomTextShippingAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksRequestCustomTextShippingAddressVariant2($value)';}
}

@immutable
final class PostPaymentLinksRequestCustomTextShippingAddress {
  const PostPaymentLinksRequestCustomTextShippingAddress({this.customTextPositionParam6 = const Omittable.absent(),
this.postPaymentLinksRequestCustomTextShippingAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksRequestCustomTextShippingAddress._({required this.rawValue, required this.customTextPositionParam6,
required this.postPaymentLinksRequestCustomTextShippingAddressVariant2,});
  factory PostPaymentLinksRequestCustomTextShippingAddress.fromJson(Object? json) => PostPaymentLinksRequestCustomTextShippingAddress._(
    rawValue: Omittable(json),
    customTextPositionParam6: parseAnyOfVariant<CustomTextPositionParam6>(json, (value) => CustomTextPositionParam6.fromJson(value! as Map<String, dynamic>)),
postPaymentLinksRequestCustomTextShippingAddressVariant2: parseAnyOfVariant<PostPaymentLinksRequestCustomTextShippingAddressVariant2>(json, (value) => PostPaymentLinksRequestCustomTextShippingAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam6> customTextPositionParam6;
final Omittable<PostPaymentLinksRequestCustomTextShippingAddressVariant2> postPaymentLinksRequestCustomTextShippingAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam6.isPresent || postPaymentLinksRequestCustomTextShippingAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam6.isPresent) customTextPositionParam6.value?.toJson(),
if (postPaymentLinksRequestCustomTextShippingAddressVariant2.isPresent) postPaymentLinksRequestCustomTextShippingAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksRequestCustomTextShippingAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksRequestCustomTextShippingAddress(${toJson()})';
}
