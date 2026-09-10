// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2 {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2._(json),
};}

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2($value)';}
}

@immutable
final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhone {
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2> postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
