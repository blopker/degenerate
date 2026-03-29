// GENERATED CODE - DO NOT MODIFY BY HAND

/// The object type, which is always "model".
final class ModelObject {const ModelObject._(this.value);

factory ModelObject.fromJson(String json) { return switch (json) {
  'model' => model,
  _ => ModelObject._(json),
}; }

static const ModelObject model = ModelObject._('model');

static const List<ModelObject> values = [model];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ModelObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ModelObject($value)'; } 
 }
/// Describes an OpenAI model offering that can be used with the API.
final class Model {const Model({required this.id, required this.created, required this.object, required this.ownedBy, });

factory Model.fromJson(Map<String, dynamic> json) { return Model(
  id: json['id'] as String,
  created: (json['created'] as num).toInt(),
  object: ModelObject.fromJson(json['object'] as String),
  ownedBy: json['owned_by'] as String,
); }

/// The model identifier, which can be referenced in the API endpoints.
final String id;

/// The Unix timestamp (in seconds) when the model was created.
final int created;

/// The object type, which is always "model".
final ModelObject object;

/// The organization that owns the model.
final String ownedBy;

Map<String, dynamic> toJson() { return {
  'id': id,
  'created': created,
  'object': object.toJson(),
  'owned_by': ownedBy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('object') &&
      json.containsKey('owned_by') && json['owned_by'] is String; } 
Model copyWith({String? id, int? created, ModelObject? object, String? ownedBy, }) { return Model(
  id: id ?? this.id,
  created: created ?? this.created,
  object: object ?? this.object,
  ownedBy: ownedBy ?? this.ownedBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Model &&
          id == other.id &&
          created == other.created &&
          object == other.object &&
          ownedBy == other.ownedBy; } 
@override int get hashCode { return Object.hash(id, created, object, ownedBy); } 
@override String toString() { return 'Model(id: $id, created: $created, object: $object, ownedBy: $ownedBy)'; } 
 }
