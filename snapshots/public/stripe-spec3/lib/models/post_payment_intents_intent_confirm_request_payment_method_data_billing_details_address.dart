// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address4.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress4 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress4,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress4: parseAnyOfVariant<BillingDetailsAddress4>(json, (value) => BillingDetailsAddress4.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress4> billingDetailsAddress4;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress4.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress4.isPresent) billingDetailsAddress4.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
