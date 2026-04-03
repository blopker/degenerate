// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the certificate attribute by which to group the results.
@immutable final class RadarGetCtTimeseriesGroupDimension {const RadarGetCtTimeseriesGroupDimension._(this.value);

factory RadarGetCtTimeseriesGroupDimension.fromJson(String json) { return switch (json) {
  'CA' => ca,
  'CA_OWNER' => caOwner,
  'DURATION' => duration,
  'ENTRY_TYPE' => entryType,
  'EXPIRATION_STATUS' => expirationStatus,
  'HAS_IPS' => hasIps,
  'HAS_WILDCARDS' => hasWildcards,
  'LOG' => log,
  'LOG_API' => logApi,
  'LOG_OPERATOR' => logOperator,
  'PUBLIC_KEY_ALGORITHM' => publicKeyAlgorithm,
  'SIGNATURE_ALGORITHM' => signatureAlgorithm,
  'TLD' => tld,
  'VALIDATION_LEVEL' => validationLevel,
  _ => RadarGetCtTimeseriesGroupDimension._(json),
}; }

static const RadarGetCtTimeseriesGroupDimension ca = RadarGetCtTimeseriesGroupDimension._('CA');

static const RadarGetCtTimeseriesGroupDimension caOwner = RadarGetCtTimeseriesGroupDimension._('CA_OWNER');

static const RadarGetCtTimeseriesGroupDimension duration = RadarGetCtTimeseriesGroupDimension._('DURATION');

static const RadarGetCtTimeseriesGroupDimension entryType = RadarGetCtTimeseriesGroupDimension._('ENTRY_TYPE');

static const RadarGetCtTimeseriesGroupDimension expirationStatus = RadarGetCtTimeseriesGroupDimension._('EXPIRATION_STATUS');

static const RadarGetCtTimeseriesGroupDimension hasIps = RadarGetCtTimeseriesGroupDimension._('HAS_IPS');

static const RadarGetCtTimeseriesGroupDimension hasWildcards = RadarGetCtTimeseriesGroupDimension._('HAS_WILDCARDS');

static const RadarGetCtTimeseriesGroupDimension log = RadarGetCtTimeseriesGroupDimension._('LOG');

static const RadarGetCtTimeseriesGroupDimension logApi = RadarGetCtTimeseriesGroupDimension._('LOG_API');

static const RadarGetCtTimeseriesGroupDimension logOperator = RadarGetCtTimeseriesGroupDimension._('LOG_OPERATOR');

static const RadarGetCtTimeseriesGroupDimension publicKeyAlgorithm = RadarGetCtTimeseriesGroupDimension._('PUBLIC_KEY_ALGORITHM');

static const RadarGetCtTimeseriesGroupDimension signatureAlgorithm = RadarGetCtTimeseriesGroupDimension._('SIGNATURE_ALGORITHM');

static const RadarGetCtTimeseriesGroupDimension tld = RadarGetCtTimeseriesGroupDimension._('TLD');

static const RadarGetCtTimeseriesGroupDimension validationLevel = RadarGetCtTimeseriesGroupDimension._('VALIDATION_LEVEL');

static const List<RadarGetCtTimeseriesGroupDimension> values = [ca, caOwner, duration, entryType, expirationStatus, hasIps, hasWildcards, log, logApi, logOperator, publicKeyAlgorithm, signatureAlgorithm, tld, validationLevel];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesGroupDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesGroupDimension($value)'; } 
 }
