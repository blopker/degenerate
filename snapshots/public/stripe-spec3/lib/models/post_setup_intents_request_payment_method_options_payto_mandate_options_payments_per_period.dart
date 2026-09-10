// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 {const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 $empty = PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod {
  const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod({this.$int = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._({required this.rawValue, required this.$int,
required this.postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2,});
  factory PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent) postSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod(${toJson()})';
}
