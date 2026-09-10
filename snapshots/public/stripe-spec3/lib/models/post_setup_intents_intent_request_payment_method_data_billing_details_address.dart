// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_details_address8.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 {const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._(json),
};}

static const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddress {
  const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddress({this.billingDetailsAddress8 = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddress._({required this.rawValue, required this.billingDetailsAddress8,
required this.postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddress.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddress._(
    rawValue: Omittable(json),
    billingDetailsAddress8: parseAnyOfVariant<BillingDetailsAddress8>(json, (value) => BillingDetailsAddress8.fromJson(value! as Map<String, dynamic>)),
postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<BillingDetailsAddress8> billingDetailsAddress8;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2> postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => billingDetailsAddress8.isPresent || postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (billingDetailsAddress8.isPresent) billingDetailsAddress8.value?.toJson(),
if (postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsAddress(${toJson()})';
}
