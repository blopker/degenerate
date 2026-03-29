// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob({required this.day, required this.month, required this.year, });

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob(
  day: (json['day'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  year: (json['year'] as num).toInt(),
); }

final int day;

final int month;

final int year;

Map<String, dynamic> toJson() { return {
  'day': day,
  'month': month,
  'year': year,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('day') && json['day'] is num &&
      json.containsKey('month') && json['month'] is num &&
      json.containsKey('year') && json['year'] is num; } 
PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob copyWith({int? day, int? month, int? year, }) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob(
  day: day ?? this.day,
  month: month ?? this.month,
  year: year ?? this.year,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob &&
          day == other.day &&
          month == other.month &&
          year == other.year; } 
@override int get hashCode { return Object.hash(day, month, year); } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob(day: $day, month: $month, year: $year)'; } 
 }
