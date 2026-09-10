// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2 {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2._(json),
}; }

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2 $empty = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2($value)'; } 
 }

@immutable
final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsName {
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2> postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2.isPresent) postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsName(${toJson()})';
}
