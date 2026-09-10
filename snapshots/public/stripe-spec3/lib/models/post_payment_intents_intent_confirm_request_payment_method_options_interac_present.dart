// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param89.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent({this.paymentMethodOptionsParam89 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent._({required this.rawValue, required this.paymentMethodOptionsParam89,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam89: parseAnyOfVariant<PaymentMethodOptionsParam89>(json, (value) => PaymentMethodOptionsParam89.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam89> paymentMethodOptionsParam89;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam89.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam89.isPresent) paymentMethodOptionsParam89.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsInteracPresent(${toJson()})';
}
