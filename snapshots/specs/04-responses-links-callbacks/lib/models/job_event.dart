// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class JobEvent {const JobEvent({this.jobId, this.status, });

factory JobEvent.fromJson(Map<String, dynamic> json) { return JobEvent(
  jobId: json['jobId'] as String?,
  status: json['status'] as String?,
); }

final String? jobId;

final String? status;

Map<String, dynamic> toJson() { return {
  'jobId': ?jobId,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'jobId', 'status'}.contains(key)); } 
JobEvent copyWith({String Function()? jobId, String Function()? status, }) { return JobEvent(
  jobId: jobId != null ? jobId() : this.jobId,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is JobEvent &&
          jobId == other.jobId &&
          status == other.status; } 
@override int get hashCode { return Object.hash(jobId, status); } 
@override String toString() { return 'JobEvent(jobId: $jobId, status: $status)'; } 
 }
