// GENERATED CODE - DO NOT MODIFY BY HAND

import 'call_recording_enum_status.dart';final class UpdateCallRecordingRequest {const UpdateCallRecordingRequest({required this.status, this.pauseBehavior, });

factory UpdateCallRecordingRequest.fromJson(Map<String, dynamic> json) { return UpdateCallRecordingRequest(
  status: CallRecordingEnumStatus.fromJson(json['Status'] as String),
  pauseBehavior: json['PauseBehavior'] as String?,
); }

/// The status of the recording. Can be: `processing`, `completed` and `absent`. For more detailed statuses on in-progress recordings, check out how to [Update a Recording Resource](https://www.twilio.com/docs/voice/api/recording#update-a-recording-resource).
final CallRecordingEnumStatus status;

/// Whether to record during a pause. Can be: `skip` or `silence` and the default is `silence`. `skip` does not record during the pause period, while `silence` will replace the actual audio of the call with silence during the pause period. This parameter only applies when setting `status` is set to `paused`.
final String? pauseBehavior;

Map<String, dynamic> toJson() { return {
  'Status': status.toJson(),
  'PauseBehavior': ?pauseBehavior,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('Status'); } 
UpdateCallRecordingRequest copyWith({CallRecordingEnumStatus? status, String Function()? pauseBehavior, }) { return UpdateCallRecordingRequest(
  status: status ?? this.status,
  pauseBehavior: pauseBehavior != null ? pauseBehavior() : this.pauseBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateCallRecordingRequest &&
          status == other.status &&
          pauseBehavior == other.pauseBehavior; } 
@override int get hashCode { return Object.hash(status, pauseBehavior); } 
@override String toString() { return 'UpdateCallRecordingRequest(status: $status, pauseBehavior: $pauseBehavior)'; } 
 }
