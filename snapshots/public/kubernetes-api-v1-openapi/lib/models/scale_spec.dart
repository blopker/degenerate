// GENERATED CODE - DO NOT MODIFY BY HAND

/// ScaleSpec describes the attributes of a scale subresource.
final class ScaleSpec {const ScaleSpec({this.replicas = 0});

factory ScaleSpec.fromJson(Map<String, dynamic> json) { return ScaleSpec(
  replicas: json.containsKey('replicas') ? (json['replicas'] as num).toInt() : 0,
); }

/// replicas is the desired number of instances for the scaled object.
final int replicas;

Map<String, dynamic> toJson() { return {
  'replicas': replicas,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'replicas'}.contains(key)); } 
ScaleSpec copyWith({int Function()? replicas}) { return ScaleSpec(
  replicas: replicas != null ? replicas() : this.replicas,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ScaleSpec &&
          replicas == other.replicas; } 
@override int get hashCode { return replicas.hashCode; } 
@override String toString() { return 'ScaleSpec(replicas: $replicas)'; } 
 }
