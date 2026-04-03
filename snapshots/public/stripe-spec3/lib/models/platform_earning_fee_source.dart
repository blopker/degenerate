// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of object that created the application fee.
@immutable final class PlatformEarningFeeSourceType {const PlatformEarningFeeSourceType._(this.value);

factory PlatformEarningFeeSourceType.fromJson(String json) { return switch (json) {
  'charge' => charge,
  'payout' => payout,
  _ => PlatformEarningFeeSourceType._(json),
}; }

static const PlatformEarningFeeSourceType charge = PlatformEarningFeeSourceType._('charge');

static const PlatformEarningFeeSourceType payout = PlatformEarningFeeSourceType._('payout');

static const List<PlatformEarningFeeSourceType> values = [charge, payout];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PlatformEarningFeeSourceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PlatformEarningFeeSourceType($value)'; } 
 }
/// 
@immutable final class PlatformEarningFeeSource {const PlatformEarningFeeSource({required this.type, this.charge, this.payout, });

factory PlatformEarningFeeSource.fromJson(Map<String, dynamic> json) { return PlatformEarningFeeSource(
  charge: json['charge'] as String?,
  payout: json['payout'] as String?,
  type: PlatformEarningFeeSourceType.fromJson(json['type'] as String),
); }

/// Charge ID that created this application fee.
final String? charge;

/// Payout ID that created this application fee.
final String? payout;

/// Type of object that created the application fee.
final PlatformEarningFeeSourceType type;

Map<String, dynamic> toJson() { return {
  'charge': ?charge,
  'payout': ?payout,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PlatformEarningFeeSource copyWith({String Function()? charge, String Function()? payout, PlatformEarningFeeSourceType? type, }) { return PlatformEarningFeeSource(
  charge: charge != null ? charge() : this.charge,
  payout: payout != null ? payout() : this.payout,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PlatformEarningFeeSource &&
          charge == other.charge &&
          payout == other.payout &&
          type == other.type; } 
@override int get hashCode { return Object.hash(charge, payout, type); } 
@override String toString() { return 'PlatformEarningFeeSource(charge: $charge, payout: $payout, type: $type)'; } 
 }
