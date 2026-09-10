// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address3.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress {
  const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress3 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress3,
required this.postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress3: parseAnyOfVariant<BillingDetailsAddress3>(json, (value) => BillingDetailsAddress3.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress3> billingDetailsAddress3;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2> postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress3.isPresent || postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress3.isPresent) billingDetailsAddress3.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
