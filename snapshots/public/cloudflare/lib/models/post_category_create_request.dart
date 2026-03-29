// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCategoryCreateRequest {const PostCategoryCreateRequest({required this.killChain, this.mitreAttack, required this.name, this.shortname, });

factory PostCategoryCreateRequest.fromJson(Map<String, dynamic> json) { return PostCategoryCreateRequest(
  killChain: (json['killChain'] as num).toDouble(),
  mitreAttack: (json['mitreAttack'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: json['name'] as String,
  shortname: json['shortname'] as String?,
); }

final double killChain;

final List<String>? mitreAttack;

final String name;

final String? shortname;

Map<String, dynamic> toJson() { return {
  'killChain': killChain,
  'mitreAttack': ?mitreAttack,
  'name': name,
  'shortname': ?shortname,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('killChain') && json['killChain'] is num &&
      json.containsKey('name') && json['name'] is String; } 
PostCategoryCreateRequest copyWith({double? killChain, List<String> Function()? mitreAttack, String? name, String Function()? shortname, }) { return PostCategoryCreateRequest(
  killChain: killChain ?? this.killChain,
  mitreAttack: mitreAttack != null ? mitreAttack() : this.mitreAttack,
  name: name ?? this.name,
  shortname: shortname != null ? shortname() : this.shortname,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCategoryCreateRequest &&
          killChain == other.killChain &&
          listEquals(mitreAttack, other.mitreAttack) &&
          name == other.name &&
          shortname == other.shortname; } 
@override int get hashCode { return Object.hash(killChain, Object.hashAll(mitreAttack ?? const []), name, shortname); } 
@override String toString() { return 'PostCategoryCreateRequest(killChain: $killChain, mitreAttack: $mitreAttack, name: $name, shortname: $shortname)'; } 
 }
