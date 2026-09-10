// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'identity_verification_report.dart';/// ID of the most recent VerificationReport. [Learn more about accessing detailed verification results.](https://docs.stripe.com/identity/verification-sessions#results)
@immutable
final class IdentityVerificationSessionLastVerificationReport {
  const IdentityVerificationSessionLastVerificationReport({this.string = const Omittable.absent(),
this.identityVerificationReport = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IdentityVerificationSessionLastVerificationReport._({required this.rawValue, required this.string,
required this.identityVerificationReport,});
  factory IdentityVerificationSessionLastVerificationReport.fromJson(Object? json) => IdentityVerificationSessionLastVerificationReport._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
identityVerificationReport: parseAnyOfVariant<IdentityVerificationReport>(json, (value) => IdentityVerificationReport.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IdentityVerificationReport> identityVerificationReport;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || identityVerificationReport.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (identityVerificationReport.isPresent) identityVerificationReport.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IdentityVerificationSessionLastVerificationReport && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IdentityVerificationSessionLastVerificationReport(${toJson()})';
}
