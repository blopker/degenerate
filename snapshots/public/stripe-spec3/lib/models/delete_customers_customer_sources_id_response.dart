// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_payment_source.dart';import 'payment_source.dart';
@immutable
final class DeleteCustomersCustomerSourcesIdResponse {
  const DeleteCustomersCustomerSourcesIdResponse({this.paymentSource = const Omittable.absent(),
this.deletedPaymentSource = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DeleteCustomersCustomerSourcesIdResponse._({required this.rawValue, required this.paymentSource,
required this.deletedPaymentSource,});
  factory DeleteCustomersCustomerSourcesIdResponse.fromJson(Object? json) => DeleteCustomersCustomerSourcesIdResponse._(
    rawValue: Omittable(json),
    paymentSource: parseAnyOfVariant<PaymentSource>(json, PaymentSource.fromJson, isValid: (value) => value.isValid),
deletedPaymentSource: parseAnyOfVariant<DeletedPaymentSource>(json, DeletedPaymentSource.fromJson, isValid: (value) => value.isValid),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentSource> paymentSource;
final Omittable<DeletedPaymentSource> deletedPaymentSource;

  /// Whether at least one known variant matched.
  bool get isValid => paymentSource.isPresent || deletedPaymentSource.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentSource.isPresent) paymentSource.value?.toJson(),
if (deletedPaymentSource.isPresent) deletedPaymentSource.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DeleteCustomersCustomerSourcesIdResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DeleteCustomersCustomerSourcesIdResponse(${toJson()})';
}
