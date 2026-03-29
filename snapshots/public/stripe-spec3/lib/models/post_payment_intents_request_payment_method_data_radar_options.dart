// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsRequestPaymentMethodDataRadarOptions {const PostPaymentIntentsRequestPaymentMethodDataRadarOptions({this.session});

factory PostPaymentIntentsRequestPaymentMethodDataRadarOptions.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestPaymentMethodDataRadarOptions(
  session: json['session'] as String?,
); }

final String? session;

Map<String, dynamic> toJson() { return {
  'session': ?session,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentIntentsRequestPaymentMethodDataRadarOptions copyWith({String Function()? session}) { return PostPaymentIntentsRequestPaymentMethodDataRadarOptions(
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodDataRadarOptions &&
          session == other.session; } 
@override int get hashCode { return session.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodDataRadarOptions(session: $session)'; } 
 }
