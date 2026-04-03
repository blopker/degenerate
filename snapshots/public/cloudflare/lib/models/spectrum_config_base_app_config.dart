// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_identifier.dart';import 'spectrum_config_timestamp.dart';@immutable final class SpectrumConfigBaseAppConfig {const SpectrumConfigBaseAppConfig({required this.createdOn, required this.id, required this.modifiedOn, });

factory SpectrumConfigBaseAppConfig.fromJson(Map<String, dynamic> json) { return SpectrumConfigBaseAppConfig(
  createdOn: SpectrumConfigTimestamp.fromJson(json['created_on'] as String),
  id: SpectrumConfigIdentifier.fromJson(json['id'] as String),
  modifiedOn: SpectrumConfigTimestamp.fromJson(json['modified_on'] as String),
); }

final SpectrumConfigTimestamp createdOn;

/// App identifier.
final SpectrumConfigIdentifier id;

final SpectrumConfigTimestamp modifiedOn;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on'); } 
SpectrumConfigBaseAppConfig copyWith({SpectrumConfigTimestamp? createdOn, SpectrumConfigIdentifier? id, SpectrumConfigTimestamp? modifiedOn, }) { return SpectrumConfigBaseAppConfig(
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigBaseAppConfig &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(createdOn, id, modifiedOn); } 
@override String toString() { return 'SpectrumConfigBaseAppConfig(createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn)'; } 
 }
