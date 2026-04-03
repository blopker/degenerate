// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationFleetCardholderPromptData {const IssuingAuthorizationFleetCardholderPromptData({this.alphanumericId, this.driverId, this.odometer, this.unspecifiedId, this.userId, this.vehicleNumber, });

factory IssuingAuthorizationFleetCardholderPromptData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetCardholderPromptData(
  alphanumericId: json['alphanumeric_id'] as String?,
  driverId: json['driver_id'] as String?,
  odometer: json['odometer'] != null ? (json['odometer'] as num).toInt() : null,
  unspecifiedId: json['unspecified_id'] as String?,
  userId: json['user_id'] as String?,
  vehicleNumber: json['vehicle_number'] as String?,
); }

/// `[Deprecated]` An alphanumeric ID, though typical point of sales only support numeric entry. The card program can be configured to prompt for a vehicle ID, driver ID, or generic ID.
final String? alphanumericId;

/// Driver ID.
final String? driverId;

/// Odometer reading.
final int? odometer;

/// An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
final String? unspecifiedId;

/// User ID.
final String? userId;

/// Vehicle number.
final String? vehicleNumber;

Map<String, dynamic> toJson() { return {
  'alphanumeric_id': ?alphanumericId,
  'driver_id': ?driverId,
  'odometer': ?odometer,
  'unspecified_id': ?unspecifiedId,
  'user_id': ?userId,
  'vehicle_number': ?vehicleNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'alphanumeric_id', 'driver_id', 'odometer', 'unspecified_id', 'user_id', 'vehicle_number'}.contains(key)); } 
IssuingAuthorizationFleetCardholderPromptData copyWith({String? Function()? alphanumericId, String? Function()? driverId, int? Function()? odometer, String? Function()? unspecifiedId, String? Function()? userId, String? Function()? vehicleNumber, }) { return IssuingAuthorizationFleetCardholderPromptData(
  alphanumericId: alphanumericId != null ? alphanumericId() : this.alphanumericId,
  driverId: driverId != null ? driverId() : this.driverId,
  odometer: odometer != null ? odometer() : this.odometer,
  unspecifiedId: unspecifiedId != null ? unspecifiedId() : this.unspecifiedId,
  userId: userId != null ? userId() : this.userId,
  vehicleNumber: vehicleNumber != null ? vehicleNumber() : this.vehicleNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetCardholderPromptData &&
          alphanumericId == other.alphanumericId &&
          driverId == other.driverId &&
          odometer == other.odometer &&
          unspecifiedId == other.unspecifiedId &&
          userId == other.userId &&
          vehicleNumber == other.vehicleNumber; } 
@override int get hashCode { return Object.hash(alphanumericId, driverId, odometer, unspecifiedId, userId, vehicleNumber); } 
@override String toString() { return 'IssuingAuthorizationFleetCardholderPromptData(alphanumericId: $alphanumericId, driverId: $driverId, odometer: $odometer, unspecifiedId: $unspecifiedId, userId: $userId, vehicleNumber: $vehicleNumber)'; } 
 }
