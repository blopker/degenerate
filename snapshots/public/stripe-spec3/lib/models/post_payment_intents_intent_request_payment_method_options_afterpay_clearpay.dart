// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param39.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpay({this.paymentMethodOptionsParam39 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpay._({required this.rawValue, required this.paymentMethodOptionsParam39,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam39: parseAnyOfVariant<PaymentMethodOptionsParam39>(json, (value) => PaymentMethodOptionsParam39.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam39> paymentMethodOptionsParam39;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam39.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam39.isPresent) paymentMethodOptionsParam39.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAfterpayClearpay(${toJson()})';
}
