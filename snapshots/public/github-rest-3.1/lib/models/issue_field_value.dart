// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issue_field_value_single_select_option.dart';/// The data type of the issue field
final class IssueFieldValueDataType {const IssueFieldValueDataType._(this.value);

factory IssueFieldValueDataType.fromJson(String json) { return switch (json) {
  'text' => text,
  'single_select' => singleSelect,
  'number' => number,
  'date' => date,
  _ => IssueFieldValueDataType._(json),
}; }

static const IssueFieldValueDataType text = IssueFieldValueDataType._('text');

static const IssueFieldValueDataType singleSelect = IssueFieldValueDataType._('single_select');

static const IssueFieldValueDataType number = IssueFieldValueDataType._('number');

static const IssueFieldValueDataType date = IssueFieldValueDataType._('date');

static const List<IssueFieldValueDataType> values = [text, singleSelect, number, date];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssueFieldValueDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssueFieldValueDataType($value)'; } 
 }
/// A value assigned to an issue field
final class IssueFieldValue {const IssueFieldValue({required this.issueFieldId, required this.nodeId, required this.dataType, required this.value, this.singleSelectOption, });

factory IssueFieldValue.fromJson(Map<String, dynamic> json) { return IssueFieldValue(
  issueFieldId: (json['issue_field_id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  dataType: IssueFieldValueDataType.fromJson(json['data_type'] as String),
  value: json['value'],
  singleSelectOption: json['single_select_option'] != null ? IssueFieldValueSingleSelectOption.fromJson(json['single_select_option'] as Map<String, dynamic>) : null,
); }

/// Unique identifier for the issue field.
final int issueFieldId;

final String nodeId;

/// The data type of the issue field
final IssueFieldValueDataType dataType;

/// The value of the issue field
/// 
/// The value of the issue field
/// 
/// One of: String, double, int
final dynamic value;

/// Details about the selected option (only present for single_select fields)
final IssueFieldValueSingleSelectOption? singleSelectOption;

Map<String, dynamic> toJson() { return {
  'issue_field_id': issueFieldId,
  'node_id': nodeId,
  'data_type': dataType.toJson(),
  'value': ?value,
  if (singleSelectOption != null) 'single_select_option': singleSelectOption?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('issue_field_id') && json['issue_field_id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('data_type') &&
      json.containsKey('value'); } 
IssueFieldValue copyWith({int? issueFieldId, String? nodeId, IssueFieldValueDataType? dataType, dynamic Function()? value, IssueFieldValueSingleSelectOption? Function()? singleSelectOption, }) { return IssueFieldValue(
  issueFieldId: issueFieldId ?? this.issueFieldId,
  nodeId: nodeId ?? this.nodeId,
  dataType: dataType ?? this.dataType,
  value: value != null ? value() : this.value,
  singleSelectOption: singleSelectOption != null ? singleSelectOption() : this.singleSelectOption,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssueFieldValue &&
          issueFieldId == other.issueFieldId &&
          nodeId == other.nodeId &&
          dataType == other.dataType &&
          value == other.value &&
          singleSelectOption == other.singleSelectOption; } 
@override int get hashCode { return Object.hash(issueFieldId, nodeId, dataType, value, singleSelectOption); } 
@override String toString() { return 'IssueFieldValue(issueFieldId: $issueFieldId, nodeId: $nodeId, dataType: $dataType, value: $value, singleSelectOption: $singleSelectOption)'; } 
 }
