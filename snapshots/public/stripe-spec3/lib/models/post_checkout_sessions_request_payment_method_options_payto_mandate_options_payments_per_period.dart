// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._(json),
};}

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod {
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod({this.$int = const Omittable.absent(),
this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._({required this.rawValue, required this.$int,
required this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2,});
  factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod.fromJson(Object? json) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2>(json, (value) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2> postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.isPresent) postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriodVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsPaymentsPerPeriod(${toJson()})';
}
