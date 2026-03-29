// GENERATED CODE - DO NOT MODIFY BY HAND

final class OrgsListPendingInvitationsInvitationSource {const OrgsListPendingInvitationsInvitationSource._(this.value);

factory OrgsListPendingInvitationsInvitationSource.fromJson(String json) { return switch (json) {
  'all' => all,
  'member' => member,
  'scim' => scim,
  _ => OrgsListPendingInvitationsInvitationSource._(json),
}; }

static const OrgsListPendingInvitationsInvitationSource all = OrgsListPendingInvitationsInvitationSource._('all');

static const OrgsListPendingInvitationsInvitationSource member = OrgsListPendingInvitationsInvitationSource._('member');

static const OrgsListPendingInvitationsInvitationSource scim = OrgsListPendingInvitationsInvitationSource._('scim');

static const List<OrgsListPendingInvitationsInvitationSource> values = [all, member, scim];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPendingInvitationsInvitationSource && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsListPendingInvitationsInvitationSource($value)'; } 
 }
