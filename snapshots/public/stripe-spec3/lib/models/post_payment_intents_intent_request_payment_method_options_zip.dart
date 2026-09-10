// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param74.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsZip {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsZip({this.paymentMethodOptionsParam74 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsZip._({required this.rawValue, required this.paymentMethodOptionsParam74,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsZip.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsZip._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam74: parseAnyOfVariant<PaymentMethodOptionsParam74>(json, (value) => PaymentMethodOptionsParam74.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam74> paymentMethodOptionsParam74;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam74.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam74.isPresent) paymentMethodOptionsParam74.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsZip && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsZip(${toJson()})';
}
