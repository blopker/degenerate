// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsAffirm {
  const PostPaymentIntentsRequestPaymentMethodOptionsAffirm({this.paymentMethodOptionsParam = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsAffirm._({required this.rawValue, required this.paymentMethodOptionsParam,
required this.postPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsAffirm.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsAffirm._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam: parseAnyOfVariant<PaymentMethodOptionsParam>(json, (value) => PaymentMethodOptionsParam.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam> paymentMethodOptionsParam;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2> postPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam.isPresent || postPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam.isPresent) paymentMethodOptionsParam.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsAffirmVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsAffirm && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsAffirm(${toJson()})';
}
