// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'eval_run_output_item_result.dart';import 'eval_run_output_item_sample.dart';/// The type of the object. Always "eval.run.output_item".
@immutable final class EvalRunOutputItemObject {const EvalRunOutputItemObject._(this.value);

factory EvalRunOutputItemObject.fromJson(String json) { return switch (json) {
  'eval.run.output_item' => evalRunOutputItem,
  _ => EvalRunOutputItemObject._(json),
}; }

static const EvalRunOutputItemObject evalRunOutputItem = EvalRunOutputItemObject._('eval.run.output_item');

static const List<EvalRunOutputItemObject> values = [evalRunOutputItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalRunOutputItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalRunOutputItemObject($value)'; } 
 }
/// A schema representing an evaluation run output item.
/// 
@immutable final class EvalRunOutputItem {const EvalRunOutputItem({required this.id, required this.runId, required this.evalId, required this.createdAt, required this.status, required this.datasourceItemId, required this.datasourceItem, required this.results, required this.sample, this.object = EvalRunOutputItemObject.evalRunOutputItem, });

factory EvalRunOutputItem.fromJson(Map<String, dynamic> json) { return EvalRunOutputItem(
  object: EvalRunOutputItemObject.fromJson(json['object'] as String),
  id: json['id'] as String,
  runId: json['run_id'] as String,
  evalId: json['eval_id'] as String,
  createdAt: (json['created_at'] as num).toInt(),
  status: json['status'] as String,
  datasourceItemId: (json['datasource_item_id'] as num).toInt(),
  datasourceItem: (json['datasource_item'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  results: (json['results'] as List<dynamic>).map((e) => EvalRunOutputItemResult.fromJson(e as Map<String, dynamic>)).toList(),
  sample: EvalRunOutputItemSample.fromJson(json['sample'] as Map<String, dynamic>),
); }

/// The type of the object. Always "eval.run.output_item".
final EvalRunOutputItemObject object;

/// Unique identifier for the evaluation run output item.
final String id;

/// The identifier of the evaluation run associated with this output item.
final String runId;

/// The identifier of the evaluation group.
final String evalId;

/// Unix timestamp (in seconds) when the evaluation run was created.
final int createdAt;

/// The status of the evaluation run.
final String status;

/// The identifier for the data source item.
final int datasourceItemId;

/// Details of the input data source item.
final Map<String,dynamic> datasourceItem;

/// A list of grader results for this output item.
final List<EvalRunOutputItemResult> results;

/// A sample containing the input and output of the evaluation run.
final EvalRunOutputItemSample sample;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'id': id,
  'run_id': runId,
  'eval_id': evalId,
  'created_at': createdAt,
  'status': status,
  'datasource_item_id': datasourceItemId,
  'datasource_item': datasourceItem,
  'results': results.map((e) => e.toJson()).toList(),
  'sample': sample.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('run_id') && json['run_id'] is String &&
      json.containsKey('eval_id') && json['eval_id'] is String &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('datasource_item_id') && json['datasource_item_id'] is num &&
      json.containsKey('datasource_item') &&
      json.containsKey('results') &&
      json.containsKey('sample'); } 
EvalRunOutputItem copyWith({EvalRunOutputItemObject? object, String? id, String? runId, String? evalId, int? createdAt, String? status, int? datasourceItemId, Map<String,dynamic>? datasourceItem, List<EvalRunOutputItemResult>? results, EvalRunOutputItemSample? sample, }) { return EvalRunOutputItem(
  object: object ?? this.object,
  id: id ?? this.id,
  runId: runId ?? this.runId,
  evalId: evalId ?? this.evalId,
  createdAt: createdAt ?? this.createdAt,
  status: status ?? this.status,
  datasourceItemId: datasourceItemId ?? this.datasourceItemId,
  datasourceItem: datasourceItem ?? this.datasourceItem,
  results: results ?? this.results,
  sample: sample ?? this.sample,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalRunOutputItem &&
          object == other.object &&
          id == other.id &&
          runId == other.runId &&
          evalId == other.evalId &&
          createdAt == other.createdAt &&
          status == other.status &&
          datasourceItemId == other.datasourceItemId &&
          datasourceItem == other.datasourceItem &&
          listEquals(results, other.results) &&
          sample == other.sample; } 
@override int get hashCode { return Object.hash(object, id, runId, evalId, createdAt, status, datasourceItemId, datasourceItem, Object.hashAll(results), sample); } 
@override String toString() { return 'EvalRunOutputItem(object: $object, id: $id, runId: $runId, evalId: $evalId, createdAt: $createdAt, status: $status, datasourceItemId: $datasourceItemId, datasourceItem: $datasourceItem, results: $results, sample: $sample)'; } 
 }
