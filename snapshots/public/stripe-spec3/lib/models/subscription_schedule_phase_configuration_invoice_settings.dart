// GENERATED CODE - DO NOT MODIFY BY HAND

import 'invoice_setting_subscription_schedule_phase_setting.dart';/// The invoice settings applicable during this phase.
final class SubscriptionSchedulePhaseConfigurationInvoiceSettings {const SubscriptionSchedulePhaseConfigurationInvoiceSettings({this.invoiceSettingSubscriptionSchedulePhaseSetting});

factory SubscriptionSchedulePhaseConfigurationInvoiceSettings.fromJson(Map<String, dynamic> json) { return SubscriptionSchedulePhaseConfigurationInvoiceSettings(
  invoiceSettingSubscriptionSchedulePhaseSetting: InvoiceSettingSubscriptionSchedulePhaseSetting.canParse(json) ? InvoiceSettingSubscriptionSchedulePhaseSetting.fromJson(json) : null,
); }

final InvoiceSettingSubscriptionSchedulePhaseSetting? invoiceSettingSubscriptionSchedulePhaseSetting;

/// At least one variant must be present.
bool get isValid { return invoiceSettingSubscriptionSchedulePhaseSetting != null; } 
Map<String, dynamic> toJson() { return {
  ...?invoiceSettingSubscriptionSchedulePhaseSetting?.toJson(),
}; } 
 }
