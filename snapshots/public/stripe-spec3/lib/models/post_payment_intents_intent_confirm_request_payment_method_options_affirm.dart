// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param75.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm({this.paymentMethodOptionsParam75 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm._({required this.rawValue, required this.paymentMethodOptionsParam75,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam75: parseAnyOfVariant<PaymentMethodOptionsParam75>(json, (value) => PaymentMethodOptionsParam75.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam75> paymentMethodOptionsParam75;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam75.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam75.isPresent) paymentMethodOptionsParam75.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirmVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAffirm(${toJson()})';
}
