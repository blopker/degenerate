// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_email_rule_action_block.dart';/// A value that is one of: `DlpEmailRuleActionBlock`.
sealed class DlpEmailRuleAction {const DlpEmailRuleAction();

factory DlpEmailRuleAction.fromJson(Map<String, dynamic> json) {   if (DlpEmailRuleActionBlock.canParse(json)) {
    return DlpEmailRuleActionDlpEmailRuleActionBlock(DlpEmailRuleActionBlock.fromJson(json));
  }
  return DlpEmailRuleAction$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class DlpEmailRuleActionDlpEmailRuleActionBlock extends DlpEmailRuleAction {const DlpEmailRuleActionDlpEmailRuleActionBlock(this._value);

final DlpEmailRuleActionBlock _value;

@override DlpEmailRuleActionBlock get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DlpEmailRuleActionDlpEmailRuleActionBlock && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DlpEmailRuleAction.dlpEmailRuleActionBlock($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class DlpEmailRuleAction$Unknown extends DlpEmailRuleAction {const DlpEmailRuleAction$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DlpEmailRuleAction$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'DlpEmailRuleAction.unknown($_value)'; } 
 }
