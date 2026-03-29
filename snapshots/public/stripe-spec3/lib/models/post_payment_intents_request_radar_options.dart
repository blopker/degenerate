// GENERATED CODE - DO NOT MODIFY BY HAND

/// Options to configure Radar. Learn more about [Radar Sessions](https://docs.stripe.com/radar/radar-session).
final class PostPaymentIntentsRequestRadarOptions {const PostPaymentIntentsRequestRadarOptions({this.session});

factory PostPaymentIntentsRequestRadarOptions.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'session'}.contains(key)); } 
PostPaymentIntentsRequestRadarOptions copyWith({String Function()? session}) { return PostPaymentIntentsRequestRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestRadarOptions(session: $session)'; } 
 }
