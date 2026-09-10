// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_param2.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2 {const PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2 $empty = PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2($value)';}
}
/// Provides industry-specific information about the amount.
@immutable
final class PostPaymentIntentsIntentConfirmRequestAmountDetails {
  const PostPaymentIntentsIntentConfirmRequestAmountDetails({this.amountDetailsParam2 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestAmountDetailsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestAmountDetails._({required this.rawValue, required this.amountDetailsParam2,
required this.postPaymentIntentsIntentConfirmRequestAmountDetailsVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestAmountDetails.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestAmountDetails._(
    rawValue: Omittable(json),
    amountDetailsParam2: parseAnyOfVariant<AmountDetailsParam2>(json, (value) => AmountDetailsParam2.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestAmountDetailsVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsParam2> amountDetailsParam2;
final Omittable<PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2> postPaymentIntentsIntentConfirmRequestAmountDetailsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsParam2.isPresent || postPaymentIntentsIntentConfirmRequestAmountDetailsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsParam2.isPresent) amountDetailsParam2.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestAmountDetailsVariant2.isPresent) postPaymentIntentsIntentConfirmRequestAmountDetailsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestAmountDetails && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestAmountDetails(${toJson()})';
}
