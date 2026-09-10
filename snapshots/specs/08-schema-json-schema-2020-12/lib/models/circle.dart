// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Circle {const Circle({required this.kind, required this.radius, this.color = const Omittable.absent(), });

factory Circle.fromJson(Map<String, dynamic> json) { return Circle(
  kind: json['kind'],
  radius: (json['radius'] as num).toDouble(),
  color: json.containsKey('color') ? Omittable(json['color'] as String?) : const Omittable.absent(),
); }

final dynamic kind;

final double radius;

final Omittable<String?> color;

Map<String, dynamic> toJson() { return {
  'kind': kind,
  'radius': radius,
  if (color.isPresent) 'color': color.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('kind') &&
      json.containsKey('radius') && json['radius'] is num; } 
Circle copyWith({dynamic Function()? kind, double? radius, Omittable<String?>? color, }) { return Circle(
  kind: kind != null ? kind() : this.kind,
  radius: radius ?? this.radius,
  color: color ?? this.color,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Circle &&
          kind == other.kind &&
          radius == other.radius &&
          color == other.color; } 
@override int get hashCode { return Object.hash(kind, radius, color); } 
@override String toString() { return 'Circle(kind: $kind, radius: $radius, color: $color)'; } 
 }
