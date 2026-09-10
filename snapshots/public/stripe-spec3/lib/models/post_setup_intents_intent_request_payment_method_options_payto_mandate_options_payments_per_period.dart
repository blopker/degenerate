// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(json),
};}

static const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod {
  const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod({this.$int = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._({required this.rawValue, required this.$int,
required this.postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod(${toJson()})';
}
