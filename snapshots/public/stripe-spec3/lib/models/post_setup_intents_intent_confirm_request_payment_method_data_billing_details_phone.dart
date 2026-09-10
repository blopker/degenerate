// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
