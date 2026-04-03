// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeTranscriptionEnumUpdateStatus {const RealtimeTranscriptionEnumUpdateStatus._(this.value);

factory RealtimeTranscriptionEnumUpdateStatus.fromJson(String json) { return switch (json) {
  'stopped' => stopped,
  _ => RealtimeTranscriptionEnumUpdateStatus._(json),
}; }

static const RealtimeTranscriptionEnumUpdateStatus stopped = RealtimeTranscriptionEnumUpdateStatus._('stopped');

static const List<RealtimeTranscriptionEnumUpdateStatus> values = [stopped];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeTranscriptionEnumUpdateStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeTranscriptionEnumUpdateStatus($value)'; } 
 }
@immutable final class UpdateRealtimeTranscriptionRequest {const UpdateRealtimeTranscriptionRequest({required this.status});

factory UpdateRealtimeTranscriptionRequest.fromJson(Map<String, dynamic> json) { return UpdateRealtimeTranscriptionRequest(
  status: RealtimeTranscriptionEnumUpdateStatus.fromJson(json['Status'] as String),
); }

final RealtimeTranscriptionEnumUpdateStatus status;

Map<String, dynamic> toJson() { return {
  'Status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('Status'); } 
UpdateRealtimeTranscriptionRequest copyWith({RealtimeTranscriptionEnumUpdateStatus? status}) { return UpdateRealtimeTranscriptionRequest(
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateRealtimeTranscriptionRequest &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'UpdateRealtimeTranscriptionRequest(status: $status)'; } 
 }
