// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringGetCommandsResponseCommands {const DigitalExperienceMonitoringGetCommandsResponseCommands({this.completedDate = const Omittable.absent(), this.createdDate, this.deviceId, this.filename = const Omittable.absent(), this.id, this.registrationId, this.status, this.type, this.userEmail, });

factory DigitalExperienceMonitoringGetCommandsResponseCommands.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringGetCommandsResponseCommands(
  completedDate: json.containsKey('completed_date') ? Omittable(json['completed_date'] != null ? DateTime.parse(json['completed_date'] as String) : null) : const Omittable.absent(),
  createdDate: json['created_date'] != null ? DateTime.parse(json['created_date'] as String) : null,
  deviceId: json['device_id'] as String?,
  filename: json.containsKey('filename') ? Omittable(json['filename'] as String?) : const Omittable.absent(),
  id: json['id'] as String?,
  registrationId: json['registration_id'] as String?,
  status: json['status'] as String?,
  type: json['type'] as String?,
  userEmail: json['user_email'] as String?,
); }

final Omittable<DateTime?> completedDate;

final DateTime? createdDate;

final String? deviceId;

final Omittable<String?> filename;

final String? id;

/// Unique identifier for the device registration
final String? registrationId;

final String? status;

final String? type;

final String? userEmail;

Map<String, dynamic> toJson() { return {
  if (completedDate.isPresent) 'completed_date': completedDate.value?.toIso8601String(),
  if (createdDate != null) 'created_date': createdDate?.toIso8601String(),
  'device_id': ?deviceId,
  if (filename.isPresent) 'filename': filename.value,
  'id': ?id,
  'registration_id': ?registrationId,
  'status': ?status,
  'type': ?type,
  'user_email': ?userEmail,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'completed_date', 'created_date', 'device_id', 'filename', 'id', 'registration_id', 'status', 'type', 'user_email'}.contains(key)); } 
DigitalExperienceMonitoringGetCommandsResponseCommands copyWith({Omittable<DateTime?>? completedDate, DateTime? Function()? createdDate, String? Function()? deviceId, Omittable<String?>? filename, String? Function()? id, String? Function()? registrationId, String? Function()? status, String? Function()? type, String? Function()? userEmail, }) { return DigitalExperienceMonitoringGetCommandsResponseCommands(
  completedDate: completedDate ?? this.completedDate,
  createdDate: createdDate != null ? createdDate() : this.createdDate,
  deviceId: deviceId != null ? deviceId() : this.deviceId,
  filename: filename ?? this.filename,
  id: id != null ? id() : this.id,
  registrationId: registrationId != null ? registrationId() : this.registrationId,
  status: status != null ? status() : this.status,
  type: type != null ? type() : this.type,
  userEmail: userEmail != null ? userEmail() : this.userEmail,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringGetCommandsResponseCommands &&
          completedDate == other.completedDate &&
          createdDate == other.createdDate &&
          deviceId == other.deviceId &&
          filename == other.filename &&
          id == other.id &&
          registrationId == other.registrationId &&
          status == other.status &&
          type == other.type &&
          userEmail == other.userEmail; } 
@override int get hashCode { return Object.hash(completedDate, createdDate, deviceId, filename, id, registrationId, status, type, userEmail); } 
@override String toString() { return 'DigitalExperienceMonitoringGetCommandsResponseCommands(completedDate: $completedDate, createdDate: $createdDate, deviceId: $deviceId, filename: $filename, id: $id, registrationId: $registrationId, status: $status, type: $type, userEmail: $userEmail)'; } 
 }
