// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address2.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddress {
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress2 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress2,
required this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress2: parseAnyOfVariant<BillingDetailsAddress2>(json, (value) => BillingDetailsAddress2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress2> billingDetailsAddress2;
final Omittable<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2> postPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress2.isPresent || postPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress2.isPresent) billingDetailsAddress2.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postPaymentIntentsRequestPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
