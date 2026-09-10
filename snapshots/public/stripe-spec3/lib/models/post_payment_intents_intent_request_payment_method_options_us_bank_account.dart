// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param28.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccount {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccount({this.paymentIntentPaymentMethodOptionsParam28 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam28,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam28: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam28>(json, (value) => PaymentIntentPaymentMethodOptionsParam28.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam28> paymentIntentPaymentMethodOptionsParam28;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam28.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam28.isPresent) paymentIntentPaymentMethodOptionsParam28.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsUsBankAccount(${toJson()})';
}
