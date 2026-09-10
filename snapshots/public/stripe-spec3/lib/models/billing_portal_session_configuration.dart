// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_portal_configuration.dart';/// The configuration used by this session, describing the features available.
@immutable
final class BillingPortalSessionConfiguration {
  const BillingPortalSessionConfiguration({this.string = const Omittable.absent(),
this.billingPortalConfiguration = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BillingPortalSessionConfiguration._({required this.rawValue, required this.string,
required this.billingPortalConfiguration,});
  factory BillingPortalSessionConfiguration.fromJson(Object? json) => BillingPortalSessionConfiguration._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
billingPortalConfiguration: parseAnyOfVariant<BillingPortalConfiguration>(json, (value) => BillingPortalConfiguration.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BillingPortalConfiguration> billingPortalConfiguration;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || billingPortalConfiguration.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (billingPortalConfiguration.isPresent) billingPortalConfiguration.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BillingPortalSessionConfiguration && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BillingPortalSessionConfiguration(${toJson()})';
}
