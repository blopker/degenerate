// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CircleResponse {const CircleResponse({required this.kind, required this.radius, });

factory CircleResponse.fromJson(Map<String, dynamic> json) {return CircleResponse(
  kind: json['kind'],
  radius: (json['radius'] as num).toDouble(),
);}

final dynamic kind;

final double radius;

Map<String, dynamic> toJson() {return {
  'kind': kind,
  'radius': radius,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('kind') &&
      json.containsKey('radius') && json['radius'] is num;}
CircleResponse copyWith({dynamic Function()? kind, double? radius, }) {return CircleResponse(
  kind: kind != null ? kind() : this.kind,
  radius: radius ?? this.radius,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is CircleResponse &&
          kind == other.kind &&
          radius == other.radius;}
@override int get hashCode {return Object.hash(kind, radius);}
@override String toString() {return 'CircleResponse(kind: $kind, radius: $radius)';}
}
