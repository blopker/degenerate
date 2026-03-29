// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_key_rotation_interval_days.dart';/// The number of days until the next key rotation.
extension type const AccessDaysUntilNextRotation(double value) {
factory AccessDaysUntilNextRotation.fromJson(num json) => AccessDaysUntilNextRotation(json.toDouble());

num toJson() => value;

}
/// The timestamp of the previous key rotation.
extension type AccessLastKeyRotationAt(DateTime value) {
factory AccessLastKeyRotationAt.fromJson(String json) => AccessLastKeyRotationAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
final class AccessKeyConfig {const AccessKeyConfig({this.daysUntilNextRotation, this.keyRotationIntervalDays, this.lastKeyRotationAt, });

factory AccessKeyConfig.fromJson(Map<String, dynamic> json) { return AccessKeyConfig(
  daysUntilNextRotation: json['days_until_next_rotation'] != null ? AccessDaysUntilNextRotation.fromJson(json['days_until_next_rotation'] as num) : null,
  keyRotationIntervalDays: json['key_rotation_interval_days'] != null ? AccessKeyRotationIntervalDays.fromJson(json['key_rotation_interval_days'] as num) : null,
  lastKeyRotationAt: json['last_key_rotation_at'] != null ? AccessLastKeyRotationAt.fromJson(json['last_key_rotation_at'] as String) : null,
); }

/// The number of days until the next key rotation.
final AccessDaysUntilNextRotation? daysUntilNextRotation;

final AccessKeyRotationIntervalDays? keyRotationIntervalDays;

final AccessLastKeyRotationAt? lastKeyRotationAt;

Map<String, dynamic> toJson() { return {
  if (daysUntilNextRotation != null) 'days_until_next_rotation': daysUntilNextRotation?.toJson(),
  if (keyRotationIntervalDays != null) 'key_rotation_interval_days': keyRotationIntervalDays?.toJson(),
  if (lastKeyRotationAt != null) 'last_key_rotation_at': lastKeyRotationAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessKeyConfig copyWith({AccessDaysUntilNextRotation Function()? daysUntilNextRotation, AccessKeyRotationIntervalDays Function()? keyRotationIntervalDays, AccessLastKeyRotationAt Function()? lastKeyRotationAt, }) { return AccessKeyConfig(
  daysUntilNextRotation: daysUntilNextRotation != null ? daysUntilNextRotation() : this.daysUntilNextRotation,
  keyRotationIntervalDays: keyRotationIntervalDays != null ? keyRotationIntervalDays() : this.keyRotationIntervalDays,
  lastKeyRotationAt: lastKeyRotationAt != null ? lastKeyRotationAt() : this.lastKeyRotationAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessKeyConfig &&
          daysUntilNextRotation == other.daysUntilNextRotation &&
          keyRotationIntervalDays == other.keyRotationIntervalDays &&
          lastKeyRotationAt == other.lastKeyRotationAt; } 
@override int get hashCode { return Object.hash(daysUntilNextRotation, keyRotationIntervalDays, lastKeyRotationAt); } 
@override String toString() { return 'AccessKeyConfig(daysUntilNextRotation: $daysUntilNextRotation, keyRotationIntervalDays: $keyRotationIntervalDays, lastKeyRotationAt: $lastKeyRotationAt)'; } 
 }
