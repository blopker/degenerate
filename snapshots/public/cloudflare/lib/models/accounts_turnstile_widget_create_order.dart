// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Field to order widgets by.
@immutable final class AccountsTurnstileWidgetCreateOrder {const AccountsTurnstileWidgetCreateOrder._(this.value);

factory AccountsTurnstileWidgetCreateOrder.fromJson(String json) { return switch (json) {
  'id' => id,
  'sitekey' => sitekey,
  'name' => $name,
  'created_on' => createdOn,
  'modified_on' => modifiedOn,
  _ => AccountsTurnstileWidgetCreateOrder._(json),
}; }

static const AccountsTurnstileWidgetCreateOrder id = AccountsTurnstileWidgetCreateOrder._('id');

static const AccountsTurnstileWidgetCreateOrder sitekey = AccountsTurnstileWidgetCreateOrder._('sitekey');

static const AccountsTurnstileWidgetCreateOrder $name = AccountsTurnstileWidgetCreateOrder._('name');

static const AccountsTurnstileWidgetCreateOrder createdOn = AccountsTurnstileWidgetCreateOrder._('created_on');

static const AccountsTurnstileWidgetCreateOrder modifiedOn = AccountsTurnstileWidgetCreateOrder._('modified_on');

static const List<AccountsTurnstileWidgetCreateOrder> values = [id, sitekey, $name, createdOn, modifiedOn];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountsTurnstileWidgetCreateOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountsTurnstileWidgetCreateOrder($value)'; } 
 }
