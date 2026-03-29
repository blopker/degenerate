// GENERATED CODE - DO NOT MODIFY BY HAND

final class ChecksUpdateRequestCompleted {const ChecksUpdateRequestCompleted({this.status});

factory ChecksUpdateRequestCompleted.fromJson(Map<String, dynamic> json) { return ChecksUpdateRequestCompleted(
  status: json['status'],
); }

final dynamic status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ChecksUpdateRequestCompleted copyWith({dynamic Function()? status}) { return ChecksUpdateRequestCompleted(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksUpdateRequestCompleted &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ChecksUpdateRequestCompleted(status: $status)'; } 
 }
