// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationFleetCardholderPromptData {const IssuingAuthorizationFleetCardholderPromptData({this.alphanumericId = const Omittable.absent(), this.driverId = const Omittable.absent(), this.odometer = const Omittable.absent(), this.unspecifiedId = const Omittable.absent(), this.userId = const Omittable.absent(), this.vehicleNumber = const Omittable.absent(), });

factory IssuingAuthorizationFleetCardholderPromptData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetCardholderPromptData(
  alphanumericId: json.containsKey('alphanumeric_id') ? Omittable(json['alphanumeric_id'] as String?) : const Omittable.absent(),
  driverId: json.containsKey('driver_id') ? Omittable(json['driver_id'] as String?) : const Omittable.absent(),
  odometer: json.containsKey('odometer') ? Omittable(json['odometer'] != null ? (json['odometer'] as num).toInt() : null) : const Omittable.absent(),
  unspecifiedId: json.containsKey('unspecified_id') ? Omittable(json['unspecified_id'] as String?) : const Omittable.absent(),
  userId: json.containsKey('user_id') ? Omittable(json['user_id'] as String?) : const Omittable.absent(),
  vehicleNumber: json.containsKey('vehicle_number') ? Omittable(json['vehicle_number'] as String?) : const Omittable.absent(),
); }

/// `[Deprecated]` An alphanumeric ID, though typical point of sales only support numeric entry. The card program can be configured to prompt for a vehicle ID, driver ID, or generic ID.
final Omittable<String?> alphanumericId;

/// Driver ID.
final Omittable<String?> driverId;

/// Odometer reading.
final Omittable<int?> odometer;

/// An alphanumeric ID. This field is used when a vehicle ID, driver ID, or generic ID is entered by the cardholder, but the merchant or card network did not specify the prompt type.
final Omittable<String?> unspecifiedId;

/// User ID.
final Omittable<String?> userId;

/// Vehicle number.
final Omittable<String?> vehicleNumber;

Map<String, dynamic> toJson() { return {
  if (alphanumericId.isPresent) 'alphanumeric_id': alphanumericId.value,
  if (driverId.isPresent) 'driver_id': driverId.value,
  if (odometer.isPresent) 'odometer': odometer.value,
  if (unspecifiedId.isPresent) 'unspecified_id': unspecifiedId.value,
  if (userId.isPresent) 'user_id': userId.value,
  if (vehicleNumber.isPresent) 'vehicle_number': vehicleNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'alphanumeric_id', 'driver_id', 'odometer', 'unspecified_id', 'user_id', 'vehicle_number'}.contains(key)); } 
IssuingAuthorizationFleetCardholderPromptData copyWith({Omittable<String?>? alphanumericId, Omittable<String?>? driverId, Omittable<int?>? odometer, Omittable<String?>? unspecifiedId, Omittable<String?>? userId, Omittable<String?>? vehicleNumber, }) { return IssuingAuthorizationFleetCardholderPromptData(
  alphanumericId: alphanumericId ?? this.alphanumericId,
  driverId: driverId ?? this.driverId,
  odometer: odometer ?? this.odometer,
  unspecifiedId: unspecifiedId ?? this.unspecifiedId,
  userId: userId ?? this.userId,
  vehicleNumber: vehicleNumber ?? this.vehicleNumber,
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
