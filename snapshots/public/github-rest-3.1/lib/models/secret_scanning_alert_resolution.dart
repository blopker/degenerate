// GENERATED CODE - DO NOT MODIFY BY HAND

/// **Required when the `state` is `resolved`.** The reason for resolving the alert.
final class SecretScanningAlertResolution {const SecretScanningAlertResolution._(this.value);

factory SecretScanningAlertResolution.fromJson(String json) { return switch (json) {
  'false_positive' => falsePositive,
  'wont_fix' => wontFix,
  'revoked' => revoked,
  'used_in_tests' => usedInTests,
  'null' => $null,
  _ => SecretScanningAlertResolution._(json),
}; }

static const SecretScanningAlertResolution falsePositive = SecretScanningAlertResolution._('false_positive');

static const SecretScanningAlertResolution wontFix = SecretScanningAlertResolution._('wont_fix');

static const SecretScanningAlertResolution revoked = SecretScanningAlertResolution._('revoked');

static const SecretScanningAlertResolution usedInTests = SecretScanningAlertResolution._('used_in_tests');

static const SecretScanningAlertResolution $null = SecretScanningAlertResolution._('null');

static const List<SecretScanningAlertResolution> values = [falsePositive, wontFix, revoked, usedInTests, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretScanningAlertResolution && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretScanningAlertResolution($value)'; } 
 }
