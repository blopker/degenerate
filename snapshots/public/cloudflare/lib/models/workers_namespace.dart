// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersNamespace {const WorkersNamespace({this.$class, this.id, this.name, this.script, this.useSqlite, });

factory WorkersNamespace.fromJson(Map<String, dynamic> json) { return WorkersNamespace(
  $class: json['class'] as String?,
  id: json['id'] as String?,
  name: json['name'] as String?,
  script: json['script'] as String?,
  useSqlite: json['use_sqlite'] as bool?,
); }

final String? $class;

final String? id;

final String? name;

final String? script;

final bool? useSqlite;

Map<String, dynamic> toJson() { return {
  'class': ?$class,
  'id': ?id,
  'name': ?name,
  'script': ?script,
  'use_sqlite': ?useSqlite,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'class', 'id', 'name', 'script', 'use_sqlite'}.contains(key)); } 
WorkersNamespace copyWith({String Function()? $class, String Function()? id, String Function()? name, String Function()? script, bool Function()? useSqlite, }) { return WorkersNamespace(
  $class: $class != null ? $class() : this.$class,
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  script: script != null ? script() : this.script,
  useSqlite: useSqlite != null ? useSqlite() : this.useSqlite,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersNamespace &&
          $class == other.$class &&
          id == other.id &&
          name == other.name &&
          script == other.script &&
          useSqlite == other.useSqlite; } 
@override int get hashCode { return Object.hash($class, id, name, script, useSqlite); } 
@override String toString() { return 'WorkersNamespace(\$class: ${$class}, id: $id, name: $name, script: $script, useSqlite: $useSqlite)'; } 
 }
