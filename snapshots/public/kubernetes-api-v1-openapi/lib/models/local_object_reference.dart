// GENERATED CODE - DO NOT MODIFY BY HAND

/// LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
final class LocalObjectReference {const LocalObjectReference({this.name = ''});

factory LocalObjectReference.fromJson(Map<String, dynamic> json) { return LocalObjectReference(
  name: json.containsKey('name') ? json['name'] as String : '',
); }

/// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LocalObjectReference copyWith({String Function()? name}) { return LocalObjectReference(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LocalObjectReference &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'LocalObjectReference(name: $name)'; } 
 }
