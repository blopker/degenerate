// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestReceiptEmailVariant2 {const PostPaymentIntentsIntentRequestReceiptEmailVariant2._(this.value);

factory PostPaymentIntentsIntentRequestReceiptEmailVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestReceiptEmailVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestReceiptEmailVariant2 $empty = PostPaymentIntentsIntentRequestReceiptEmailVariant2._('');

static const List<PostPaymentIntentsIntentRequestReceiptEmailVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestReceiptEmailVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestReceiptEmailVariant2($value)';}
}
/// Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
@immutable
final class PostPaymentIntentsIntentRequestReceiptEmail {
  const PostPaymentIntentsIntentRequestReceiptEmail({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentRequestReceiptEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestReceiptEmail._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentRequestReceiptEmailVariant2,});
  factory PostPaymentIntentsIntentRequestReceiptEmail.fromJson(Object? json) => PostPaymentIntentsIntentRequestReceiptEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentRequestReceiptEmailVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestReceiptEmailVariant2>(json, (value) => PostPaymentIntentsIntentRequestReceiptEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentRequestReceiptEmailVariant2> postPaymentIntentsIntentRequestReceiptEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentRequestReceiptEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentRequestReceiptEmailVariant2.isPresent) postPaymentIntentsIntentRequestReceiptEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestReceiptEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestReceiptEmail(${toJson()})';
}
