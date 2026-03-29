// GENERATED CODE - DO NOT MODIFY BY HAND

/// Request payload for updating the details of an existing group.
final class UpdateGroupBody {const UpdateGroupBody({required this.name});

factory UpdateGroupBody.fromJson(Map<String, dynamic> json) { return UpdateGroupBody(
  name: json['name'] as String,
); }

/// New display name for the group.
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
UpdateGroupBody copyWith({String? name}) { return UpdateGroupBody(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateGroupBody &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'UpdateGroupBody(name: $name)'; } 
 }
