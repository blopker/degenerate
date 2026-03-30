// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_tax_settings_defaults.dart';import 'tax_product_resource_tax_settings_head_office.dart';import 'tax_product_resource_tax_settings_status_details.dart';/// String representing the object's type. Objects of the same type share the same value.
final class TaxSettingsObject {const TaxSettingsObject._(this.value);

factory TaxSettingsObject.fromJson(String json) { return switch (json) {
  'tax.settings' => taxSettings,
  _ => TaxSettingsObject._(json),
}; }

static const TaxSettingsObject taxSettings = TaxSettingsObject._('tax.settings');

static const List<TaxSettingsObject> values = [taxSettings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxSettingsObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxSettingsObject($value)'; } 
 }
/// The status of the Tax `Settings`.
final class TaxSettingsStatus {const TaxSettingsStatus._(this.value);

factory TaxSettingsStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'pending' => pending,
  _ => TaxSettingsStatus._(json),
}; }

static const TaxSettingsStatus active = TaxSettingsStatus._('active');

static const TaxSettingsStatus pending = TaxSettingsStatus._('pending');

static const List<TaxSettingsStatus> values = [active, pending];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxSettingsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxSettingsStatus($value)'; } 
 }
/// You can use Tax `Settings` to manage configurations used by Stripe Tax calculations.
/// 
/// Related guide: [Using the Settings API](https://docs.stripe.com/tax/settings-api)
final class TaxSettings {const TaxSettings({required this.defaults, this.headOffice, required this.livemode, required this.object, required this.status, required this.statusDetails, });

factory TaxSettings.fromJson(Map<String, dynamic> json) { return TaxSettings(
  defaults: TaxProductResourceTaxSettingsDefaults.fromJson(json['defaults'] as Map<String, dynamic>),
  headOffice: json['head_office'] != null ? TaxProductResourceTaxSettingsHeadOffice.fromJson(json['head_office'] as Map<String, dynamic>) : null,
  livemode: json['livemode'] as bool,
  object: TaxSettingsObject.fromJson(json['object'] as String),
  status: TaxSettingsStatus.fromJson(json['status'] as String),
  statusDetails: TaxProductResourceTaxSettingsStatusDetails.fromJson(json['status_details'] as Map<String, dynamic>),
); }

final TaxProductResourceTaxSettingsDefaults defaults;

/// The place where your business is located.
final TaxProductResourceTaxSettingsHeadOffice? headOffice;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final TaxSettingsObject object;

/// The status of the Tax `Settings`.
final TaxSettingsStatus status;

final TaxProductResourceTaxSettingsStatusDetails statusDetails;

Map<String, dynamic> toJson() { return {
  'defaults': defaults.toJson(),
  if (headOffice != null) 'head_office': headOffice?.toJson(),
  'livemode': livemode,
  'object': object.toJson(),
  'status': status.toJson(),
  'status_details': statusDetails.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('defaults') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('status') &&
      json.containsKey('status_details'); } 
TaxSettings copyWith({TaxProductResourceTaxSettingsDefaults? defaults, TaxProductResourceTaxSettingsHeadOffice? Function()? headOffice, bool? livemode, TaxSettingsObject? object, TaxSettingsStatus? status, TaxProductResourceTaxSettingsStatusDetails? statusDetails, }) { return TaxSettings(
  defaults: defaults ?? this.defaults,
  headOffice: headOffice != null ? headOffice() : this.headOffice,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  status: status ?? this.status,
  statusDetails: statusDetails ?? this.statusDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxSettings &&
          defaults == other.defaults &&
          headOffice == other.headOffice &&
          livemode == other.livemode &&
          object == other.object &&
          status == other.status &&
          statusDetails == other.statusDetails; } 
@override int get hashCode { return Object.hash(defaults, headOffice, livemode, object, status, statusDetails); } 
@override String toString() { return 'TaxSettings(defaults: $defaults, headOffice: $headOffice, livemode: $livemode, object: $object, status: $status, statusDetails: $statusDetails)'; } 
 }
