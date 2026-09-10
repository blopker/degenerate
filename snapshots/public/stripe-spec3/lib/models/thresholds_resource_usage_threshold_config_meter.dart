// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_meter.dart';/// The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
@immutable
final class ThresholdsResourceUsageThresholdConfigMeter {
  const ThresholdsResourceUsageThresholdConfigMeter({this.string = const Omittable.absent(),
this.billingMeter = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ThresholdsResourceUsageThresholdConfigMeter._({required this.rawValue, required this.string,
required this.billingMeter,});
  factory ThresholdsResourceUsageThresholdConfigMeter.fromJson(Object? json) => ThresholdsResourceUsageThresholdConfigMeter._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
billingMeter: parseAnyOfVariant<BillingMeter>(json, (value) => BillingMeter.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BillingMeter> billingMeter;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || billingMeter.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (billingMeter.isPresent) billingMeter.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ThresholdsResourceUsageThresholdConfigMeter && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ThresholdsResourceUsageThresholdConfigMeter(${toJson()})';
}
