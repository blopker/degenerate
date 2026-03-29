// GENERATED CODE - DO NOT MODIFY BY HAND

final class ChecksUpdateRequestVariant2 {const ChecksUpdateRequestVariant2({this.status});

factory ChecksUpdateRequestVariant2.fromJson(Map<String, dynamic> json) { return ChecksUpdateRequestVariant2(
  status: json['status'],
); }

final dynamic status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ChecksUpdateRequestVariant2 copyWith({dynamic Function()? status}) { return ChecksUpdateRequestVariant2(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksUpdateRequestVariant2 &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ChecksUpdateRequestVariant2(status: $status)'; } 
 }
