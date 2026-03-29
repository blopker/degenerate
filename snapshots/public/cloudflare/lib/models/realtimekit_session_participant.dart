// GENERATED CODE - DO NOT MODIFY BY HAND

final class RealtimekitSessionParticipant {const RealtimekitSessionParticipant({required this.createdAt, this.email, required this.id, this.name, this.picture, required this.updatedAt, });

factory RealtimekitSessionParticipant.fromJson(Map<String, dynamic> json) { return RealtimekitSessionParticipant(
  createdAt: json['created_at'] as String,
  email: json['email'] as String?,
  id: json['id'] as String,
  name: json['name'] as String?,
  picture: json['picture'] as String?,
  updatedAt: json['updated_at'] as String,
); }

final String createdAt;

/// Email of the session participant.
final String? email;

/// ID of the session participant
final String id;

/// Name of the session participant.
final String? name;

/// A URL pointing to a picture of the participant.
final String? picture;

final String updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt,
  'email': ?email,
  'id': id,
  'name': ?name,
  'picture': ?picture,
  'updated_at': updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
RealtimekitSessionParticipant copyWith({String? createdAt, String Function()? email, String? id, String Function()? name, String Function()? picture, String? updatedAt, }) { return RealtimekitSessionParticipant(
  createdAt: createdAt ?? this.createdAt,
  email: email != null ? email() : this.email,
  id: id ?? this.id,
  name: name != null ? name() : this.name,
  picture: picture != null ? picture() : this.picture,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitSessionParticipant &&
          createdAt == other.createdAt &&
          email == other.email &&
          id == other.id &&
          name == other.name &&
          picture == other.picture &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, email, id, name, picture, updatedAt); } 
@override String toString() { return 'RealtimekitSessionParticipant(createdAt: $createdAt, email: $email, id: $id, name: $name, picture: $picture, updatedAt: $updatedAt)'; } 
 }
