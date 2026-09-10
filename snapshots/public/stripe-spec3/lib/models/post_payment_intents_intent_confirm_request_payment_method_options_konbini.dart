// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param92.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbini {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbini({this.paymentMethodOptionsParam92 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbini._({required this.rawValue, required this.paymentMethodOptionsParam92,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbini.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam92: parseAnyOfVariant<PaymentMethodOptionsParam92>(json, (value) => PaymentMethodOptionsParam92.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam92> paymentMethodOptionsParam92;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam92.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam92.isPresent) paymentMethodOptionsParam92.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKonbini(${toJson()})';
}
