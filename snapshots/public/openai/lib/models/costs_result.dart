// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'costs_result_amount.dart';@immutable final class CostsResultObject {const CostsResultObject._(this.value);

factory CostsResultObject.fromJson(String json) { return switch (json) {
  'organization.costs.result' => organizationCostsResult,
  _ => CostsResultObject._(json),
}; }

static const CostsResultObject organizationCostsResult = CostsResultObject._('organization.costs.result');

static const List<CostsResultObject> values = [organizationCostsResult];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CostsResultObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CostsResultObject($value)'; } 
 }
/// The aggregated costs details of the specific time bucket.
@immutable final class CostsResult {const CostsResult({required this.object, this.amount, this.lineItem = const Omittable.absent(), this.projectId = const Omittable.absent(), });

factory CostsResult.fromJson(Map<String, dynamic> json) { return CostsResult(
  object: CostsResultObject.fromJson(json['object'] as String),
  amount: json['amount'] != null ? CostsResultAmount.fromJson(json['amount'] as Map<String, dynamic>) : null,
  lineItem: json.containsKey('line_item') ? Omittable(json['line_item'] as String?) : const Omittable.absent(),
  projectId: json.containsKey('project_id') ? Omittable(json['project_id'] as String?) : const Omittable.absent(),
); }

final CostsResultObject object;

/// The monetary value in its associated currency.
final CostsResultAmount? amount;

/// When `group_by=line_item`, this field provides the line item of the grouped costs result.
final Omittable<String?> lineItem;

/// When `group_by=project_id`, this field provides the project ID of the grouped costs result.
final Omittable<String?> projectId;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  if (amount != null) 'amount': amount?.toJson(),
  if (lineItem.isPresent) 'line_item': lineItem.value,
  if (projectId.isPresent) 'project_id': projectId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object'); } 
CostsResult copyWith({CostsResultObject? object, CostsResultAmount? Function()? amount, Omittable<String?>? lineItem, Omittable<String?>? projectId, }) { return CostsResult(
  object: object ?? this.object,
  amount: amount != null ? amount() : this.amount,
  lineItem: lineItem ?? this.lineItem,
  projectId: projectId ?? this.projectId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CostsResult &&
          object == other.object &&
          amount == other.amount &&
          lineItem == other.lineItem &&
          projectId == other.projectId; } 
@override int get hashCode { return Object.hash(object, amount, lineItem, projectId); } 
@override String toString() { return 'CostsResult(object: $object, amount: $amount, lineItem: $lineItem, projectId: $projectId)'; } 
 }
