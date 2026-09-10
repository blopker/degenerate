// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_account_type.dart';import 'iam_create_account_unit.dart';@immutable final class IamCreateAccount {const IamCreateAccount({required this.name, this.type = const Omittable.absent(), this.unit, });

factory IamCreateAccount.fromJson(Map<String, dynamic> json) { return IamCreateAccount(
  name: json['name'] as String,
  type: json.containsKey('type') ? Omittable(json['type'] != null ? IamAccountType.fromJson(json['type'] as dynamic) : null) : const Omittable.absent(),
  unit: json['unit'] != null ? IamCreateAccountUnit.fromJson(json['unit'] as Map<String, dynamic>) : null,
); }

/// Account name
final String name;

final Omittable<IamAccountType?> type;

/// information related to the tenant unit, and optionally, an id of the unit to create the account on. see https://developers.cloudflare.com/tenant/how-to/manage-accounts/
final IamCreateAccountUnit? unit;

Map<String, dynamic> toJson() { return {
  'name': name,
  if (type.isPresent) 'type': type.value?.toJson(),
  if (unit != null) 'unit': unit?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
IamCreateAccount copyWith({String? name, Omittable<IamAccountType?>? type, IamCreateAccountUnit? Function()? unit, }) { return IamCreateAccount(
  name: name ?? this.name,
  type: type ?? this.type,
  unit: unit != null ? unit() : this.unit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamCreateAccount &&
          name == other.name &&
          type == other.type &&
          unit == other.unit; } 
@override int get hashCode { return Object.hash(name, type, unit); } 
@override String toString() { return 'IamCreateAccount(name: $name, type: $type, unit: $unit)'; } 
 }
