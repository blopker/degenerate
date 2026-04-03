// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_predefined_entry_variant_prompt_topic.dart';/// A value that is one of: `DlpPredefinedEntryVariantPromptTopic`.
sealed class DlpPredefinedEntryVariant {const DlpPredefinedEntryVariant();

factory DlpPredefinedEntryVariant.fromJson(Map<String, dynamic> json) {   if (DlpPredefinedEntryVariantPromptTopic.canParse(json)) {
    return DlpPredefinedEntryVariantDlpPredefinedEntryVariantPromptTopic(DlpPredefinedEntryVariantPromptTopic.fromJson(json));
  }
  return DlpPredefinedEntryVariant$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class DlpPredefinedEntryVariantDlpPredefinedEntryVariantPromptTopic extends DlpPredefinedEntryVariant {const DlpPredefinedEntryVariantDlpPredefinedEntryVariantPromptTopic(this._value);

final DlpPredefinedEntryVariantPromptTopic _value;

@override DlpPredefinedEntryVariantPromptTopic get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DlpPredefinedEntryVariantDlpPredefinedEntryVariantPromptTopic && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DlpPredefinedEntryVariant.dlpPredefinedEntryVariantPromptTopic($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class DlpPredefinedEntryVariant$Unknown extends DlpPredefinedEntryVariant {const DlpPredefinedEntryVariant$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DlpPredefinedEntryVariant$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DlpPredefinedEntryVariant.unknown($_value)'; } 
 }
