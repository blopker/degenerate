// GENERATED CODE - DO NOT MODIFY BY HAND

final class ChecksCreateRequestVariant1 {const ChecksCreateRequestVariant1({required this.status});

factory ChecksCreateRequestVariant1.fromJson(Map<String, dynamic> json) { return ChecksCreateRequestVariant1(
  status: json['status'],
); }

final dynamic status;

Map<String, dynamic> toJson() { return {
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
ChecksCreateRequestVariant1 copyWith({dynamic Function()? status}) { return ChecksCreateRequestVariant1(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksCreateRequestVariant1 &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'ChecksCreateRequestVariant1(status: $status)'; } 
 }
