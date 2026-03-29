// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteTagDeleteResponse {const DeleteTagDeleteResponse({required this.uuid});

factory DeleteTagDeleteResponse.fromJson(Map<String, dynamic> json) { return DeleteTagDeleteResponse(
  uuid: json['uuid'] as String,
); }

final String uuid;

Map<String, dynamic> toJson() { return {
  'uuid': uuid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('uuid') && json['uuid'] is String; } 
DeleteTagDeleteResponse copyWith({String? uuid}) { return DeleteTagDeleteResponse(
  uuid: uuid ?? this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteTagDeleteResponse &&
          uuid == other.uuid; } 
@override int get hashCode { return uuid.hashCode; } 
@override String toString() { return 'DeleteTagDeleteResponse(uuid: $uuid)'; } 
 }
