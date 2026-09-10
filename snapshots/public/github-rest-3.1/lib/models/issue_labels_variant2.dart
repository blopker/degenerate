// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssueLabelsVariant2 {const IssueLabelsVariant2({this.id, this.nodeId, this.url, this.name, this.description = const Omittable.absent(), this.color = const Omittable.absent(), this.$default, });

factory IssueLabelsVariant2.fromJson(Map<String, dynamic> json) { return IssueLabelsVariant2(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  nodeId: json['node_id'] as String?,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  name: json['name'] as String?,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  color: json.containsKey('color') ? Omittable(json['color'] as String?) : const Omittable.absent(),
  $default: json['default'] as bool?,
); }

final int? id;

final String? nodeId;

final Uri? url;

final String? name;

final Omittable<String?> description;

final Omittable<String?> color;

final bool? $default;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'node_id': ?nodeId,
  if (url != null) 'url': url?.toString(),
  'name': ?name,
  if (description.isPresent) 'description': description.value,
  if (color.isPresent) 'color': color.value,
  'default': ?$default,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'node_id', 'url', 'name', 'description', 'color', 'default'}.contains(key)); } 
IssueLabelsVariant2 copyWith({int? Function()? id, String? Function()? nodeId, Uri? Function()? url, String? Function()? name, Omittable<String?>? description, Omittable<String?>? color, bool? Function()? $default, }) { return IssueLabelsVariant2(
  id: id != null ? id() : this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  url: url != null ? url() : this.url,
  name: name != null ? name() : this.name,
  description: description ?? this.description,
  color: color ?? this.color,
  $default: $default != null ? $default() : this.$default,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssueLabelsVariant2 &&
          id == other.id &&
          nodeId == other.nodeId &&
          url == other.url &&
          name == other.name &&
          description == other.description &&
          color == other.color &&
          $default == other.$default; } 
@override int get hashCode { return Object.hash(id, nodeId, url, name, description, color, $default); } 
@override String toString() { return 'IssueLabelsVariant2(id: $id, nodeId: $nodeId, url: $url, name: $name, description: $description, color: $color, \$default: ${$default})'; } 
 }
