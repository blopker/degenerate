// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount {
  const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount({this.$int = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount._({required this.rawValue, required this.$int,
required this.postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsAmount(${toJson()})';
}
