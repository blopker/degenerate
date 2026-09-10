// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2 {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2._(json),
};}

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2($value)';}
}

@immutable
final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmail {
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmail({this.string = const Omittable.absent(),
this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmail._({required this.rawValue, required this.string,
required this.postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2,});
  factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmail.fromJson(Object? json) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2: parseAnyOfVariant<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2>(json, (value) => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2> postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2.isPresent) postTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataBillingDetailsEmail(${toJson()})';
}
