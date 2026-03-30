// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCustomersRequestCashBalanceSettingsReconciliationMode {const PostCustomersRequestCashBalanceSettingsReconciliationMode._(this.value);

factory PostCustomersRequestCashBalanceSettingsReconciliationMode.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'manual' => manual,
  'merchant_default' => merchantDefault,
  _ => PostCustomersRequestCashBalanceSettingsReconciliationMode._(json),
}; }

static const PostCustomersRequestCashBalanceSettingsReconciliationMode automatic = PostCustomersRequestCashBalanceSettingsReconciliationMode._('automatic');

static const PostCustomersRequestCashBalanceSettingsReconciliationMode manual = PostCustomersRequestCashBalanceSettingsReconciliationMode._('manual');

static const PostCustomersRequestCashBalanceSettingsReconciliationMode merchantDefault = PostCustomersRequestCashBalanceSettingsReconciliationMode._('merchant_default');

static const List<PostCustomersRequestCashBalanceSettingsReconciliationMode> values = [automatic, manual, merchantDefault];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersRequestCashBalanceSettingsReconciliationMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersRequestCashBalanceSettingsReconciliationMode($value)'; } 
 }
final class PostCustomersRequestCashBalanceSettings {const PostCustomersRequestCashBalanceSettings({this.reconciliationMode});

factory PostCustomersRequestCashBalanceSettings.fromJson(Map<String, dynamic> json) { return PostCustomersRequestCashBalanceSettings(
  reconciliationMode: json['reconciliation_mode'] != null ? PostCustomersRequestCashBalanceSettingsReconciliationMode.fromJson(json['reconciliation_mode'] as String) : null,
); }

final PostCustomersRequestCashBalanceSettingsReconciliationMode? reconciliationMode;

Map<String, dynamic> toJson() { return {
  if (reconciliationMode != null) 'reconciliation_mode': reconciliationMode?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reconciliation_mode'}.contains(key)); } 
PostCustomersRequestCashBalanceSettings copyWith({PostCustomersRequestCashBalanceSettingsReconciliationMode Function()? reconciliationMode}) { return PostCustomersRequestCashBalanceSettings(
  reconciliationMode: reconciliationMode != null ? reconciliationMode() : this.reconciliationMode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersRequestCashBalanceSettings &&
          reconciliationMode == other.reconciliationMode; } 
@override int get hashCode { return reconciliationMode.hashCode; } 
@override String toString() { return 'PostCustomersRequestCashBalanceSettings(reconciliationMode: $reconciliationMode)'; } 
 }
