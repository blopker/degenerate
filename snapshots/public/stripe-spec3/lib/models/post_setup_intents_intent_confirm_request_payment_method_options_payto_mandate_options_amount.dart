// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount({this.$int = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount._({required this.rawValue, required this.$int,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsAmount(${toJson()})';
}
