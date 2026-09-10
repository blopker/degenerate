// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2 {const PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2 $empty = PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2($value)'; } 
 }
/// Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
@immutable
final class PostPaymentIntentsIntentConfirmRequestReceiptEmail {
  const PostPaymentIntentsIntentConfirmRequestReceiptEmail({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestReceiptEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestReceiptEmail._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentConfirmRequestReceiptEmailVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestReceiptEmail.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestReceiptEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentConfirmRequestReceiptEmailVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2> postPaymentIntentsIntentConfirmRequestReceiptEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentConfirmRequestReceiptEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentConfirmRequestReceiptEmailVariant2.isPresent) postPaymentIntentsIntentConfirmRequestReceiptEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestReceiptEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestReceiptEmail(${toJson()})';
}
