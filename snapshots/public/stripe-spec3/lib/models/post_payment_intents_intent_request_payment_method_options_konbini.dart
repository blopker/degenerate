// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param55.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbini {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbini({this.paymentMethodOptionsParam55 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbini._({required this.rawValue, required this.paymentMethodOptionsParam55,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbini.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam55: parseAnyOfVariant<PaymentMethodOptionsParam55>(json, (value) => PaymentMethodOptionsParam55.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam55> paymentMethodOptionsParam55;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam55.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam55.isPresent) paymentMethodOptionsParam55.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKonbini(${toJson()})';
}
