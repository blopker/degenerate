// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the CORS options for the HTTP endpoint.
@immutable final class StreamsResponseResultHttpCors {const StreamsResponseResultHttpCors({this.origins});

factory StreamsResponseResultHttpCors.fromJson(Map<String, dynamic> json) { return StreamsResponseResultHttpCors(
  origins: (json['origins'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? origins;

Map<String, dynamic> toJson() { return {
  'origins': ?origins,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'origins'}.contains(key)); } 
StreamsResponseResultHttpCors copyWith({List<String> Function()? origins}) { return StreamsResponseResultHttpCors(
  origins: origins != null ? origins() : this.origins,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamsResponseResultHttpCors &&
          listEquals(origins, other.origins); } 
@override int get hashCode { return Object.hashAll(origins ?? const []).hashCode; } 
@override String toString() { return 'StreamsResponseResultHttpCors(origins: $origins)'; } 
 }
