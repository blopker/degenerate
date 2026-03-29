// GENERATED CODE - DO NOT MODIFY BY HAND

final class Job {const Job({required this.id, required this.status, });

factory Job.fromJson(Map<String, dynamic> json) { return Job(
  id: json['id'] as String,
  status: json['status'] as String,
); }

final String id;

final String status;

Map<String, dynamic> toJson() { return {
  'id': id,
  'status': status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('status') && json['status'] is String; } 
Job copyWith({String? id, String? status, }) { return Job(
  id: id ?? this.id,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Job &&
          id == other.id &&
          status == other.status; } 
@override int get hashCode { return Object.hash(id, status); } 
@override String toString() { return 'Job(id: $id, status: $status)'; } 
 }
