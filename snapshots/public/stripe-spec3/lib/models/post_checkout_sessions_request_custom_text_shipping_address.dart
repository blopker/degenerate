// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_text_position_param2.dart';@immutable final class PostCheckoutSessionsRequestCustomTextShippingAddressVariant2 {const PostCheckoutSessionsRequestCustomTextShippingAddressVariant2._(this.value);

factory PostCheckoutSessionsRequestCustomTextShippingAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestCustomTextShippingAddressVariant2._(json),
};}

static const PostCheckoutSessionsRequestCustomTextShippingAddressVariant2 $empty = PostCheckoutSessionsRequestCustomTextShippingAddressVariant2._('');

static const List<PostCheckoutSessionsRequestCustomTextShippingAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestCustomTextShippingAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestCustomTextShippingAddressVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestCustomTextShippingAddress {
  const PostCheckoutSessionsRequestCustomTextShippingAddress({this.customTextPositionParam2 = const Omittable.absent(),
this.postCheckoutSessionsRequestCustomTextShippingAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestCustomTextShippingAddress._({required this.rawValue, required this.customTextPositionParam2,
required this.postCheckoutSessionsRequestCustomTextShippingAddressVariant2,});
  factory PostCheckoutSessionsRequestCustomTextShippingAddress.fromJson(Object? json) => PostCheckoutSessionsRequestCustomTextShippingAddress._(
    rawValue: Omittable(json),
    customTextPositionParam2: parseAnyOfVariant<CustomTextPositionParam2>(json, (value) => CustomTextPositionParam2.fromJson(value! as Map<String, dynamic>)),
postCheckoutSessionsRequestCustomTextShippingAddressVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestCustomTextShippingAddressVariant2>(json, (value) => PostCheckoutSessionsRequestCustomTextShippingAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomTextPositionParam2> customTextPositionParam2;
final Omittable<PostCheckoutSessionsRequestCustomTextShippingAddressVariant2> postCheckoutSessionsRequestCustomTextShippingAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customTextPositionParam2.isPresent || postCheckoutSessionsRequestCustomTextShippingAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customTextPositionParam2.isPresent) customTextPositionParam2.value?.toJson(),
if (postCheckoutSessionsRequestCustomTextShippingAddressVariant2.isPresent) postCheckoutSessionsRequestCustomTextShippingAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomTextShippingAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestCustomTextShippingAddress(${toJson()})';
}
