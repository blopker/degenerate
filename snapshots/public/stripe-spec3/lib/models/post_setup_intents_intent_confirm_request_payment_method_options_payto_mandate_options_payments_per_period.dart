// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(json),
};}

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod({this.$int = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._({required this.rawValue, required this.$int,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod(${toJson()})';
}
