// GENERATED CODE - DO NOT MODIFY BY HAND

final class ChecksCreateRequestVariant2 {const ChecksCreateRequestVariant2({this.status});

factory ChecksCreateRequestVariant2.fromJson(Map<String, dynamic> json) { return ChecksCreateRequestVariant2(
  status: json['status'],
); }

final dynamic status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ChecksCreateRequestVariant2 copyWith({dynamic Function()? status}) { return ChecksCreateRequestVariant2(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksCreateRequestVariant2 &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ChecksCreateRequestVariant2(status: $status)'; } 
 }
