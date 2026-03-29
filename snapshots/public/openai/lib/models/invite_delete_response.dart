// GENERATED CODE - DO NOT MODIFY BY HAND

/// The object type, which is always `organization.invite.deleted`
final class InviteDeleteResponseObject {const InviteDeleteResponseObject._(this.value);

factory InviteDeleteResponseObject.fromJson(String json) { return switch (json) {
  'organization.invite.deleted' => organizationInviteDeleted,
  _ => InviteDeleteResponseObject._(json),
}; }

static const InviteDeleteResponseObject organizationInviteDeleted = InviteDeleteResponseObject._('organization.invite.deleted');

static const List<InviteDeleteResponseObject> values = [organizationInviteDeleted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InviteDeleteResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InviteDeleteResponseObject($value)'; } 
 }
final class InviteDeleteResponse {const InviteDeleteResponse({required this.object, required this.id, required this.deleted, });

factory InviteDeleteResponse.fromJson(Map<String, dynamic> json) { return InviteDeleteResponse(
  object: InviteDeleteResponseObject.fromJson(json['object'] as String),
  id: json['id'] as String,
  deleted: json['deleted'] as bool,
); }

/// The object type, which is always `organization.invite.deleted`
final InviteDeleteResponseObject object;

final String id;

final bool deleted;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'id': id,
  'deleted': deleted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('deleted') && json['deleted'] is bool; } 
InviteDeleteResponse copyWith({InviteDeleteResponseObject? object, String? id, bool? deleted, }) { return InviteDeleteResponse(
  object: object ?? this.object,
  id: id ?? this.id,
  deleted: deleted ?? this.deleted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InviteDeleteResponse &&
          object == other.object &&
          id == other.id &&
          deleted == other.deleted; } 
@override int get hashCode { return Object.hash(object, id, deleted); } 
@override String toString() { return 'InviteDeleteResponse(object: $object, id: $id, deleted: $deleted)'; } 
 }
