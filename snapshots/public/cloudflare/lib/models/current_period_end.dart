// GENERATED CODE - DO NOT MODIFY BY HAND

/// The end of the current period and also when the next billing is due.
extension type CurrentPeriodEnd(DateTime value) {
factory CurrentPeriodEnd.fromJson(String json) => CurrentPeriodEnd(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
