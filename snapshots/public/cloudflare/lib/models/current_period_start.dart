// GENERATED CODE - DO NOT MODIFY BY HAND

/// When the current billing period started. May match initial_period_start if this is the first period.
extension type CurrentPeriodStart(DateTime value) {
factory CurrentPeriodStart.fromJson(String json) => CurrentPeriodStart(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
