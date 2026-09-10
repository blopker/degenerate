// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone {
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2> postSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postSetupIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
