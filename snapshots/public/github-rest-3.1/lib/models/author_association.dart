// GENERATED CODE - DO NOT MODIFY BY HAND

/// How the author is associated with the repository.
final class AuthorAssociation {const AuthorAssociation._(this.value);

factory AuthorAssociation.fromJson(String json) { return switch (json) {
  'COLLABORATOR' => collaborator,
  'CONTRIBUTOR' => contributor,
  'FIRST_TIMER' => firstTimer,
  'FIRST_TIME_CONTRIBUTOR' => firstTimeContributor,
  'MANNEQUIN' => mannequin,
  'MEMBER' => member,
  'NONE' => none,
  'OWNER' => owner,
  _ => AuthorAssociation._(json),
}; }

static const AuthorAssociation collaborator = AuthorAssociation._('COLLABORATOR');

static const AuthorAssociation contributor = AuthorAssociation._('CONTRIBUTOR');

static const AuthorAssociation firstTimer = AuthorAssociation._('FIRST_TIMER');

static const AuthorAssociation firstTimeContributor = AuthorAssociation._('FIRST_TIME_CONTRIBUTOR');

static const AuthorAssociation mannequin = AuthorAssociation._('MANNEQUIN');

static const AuthorAssociation member = AuthorAssociation._('MEMBER');

static const AuthorAssociation none = AuthorAssociation._('NONE');

static const AuthorAssociation owner = AuthorAssociation._('OWNER');

static const List<AuthorAssociation> values = [collaborator, contributor, firstTimer, firstTimeContributor, mannequin, member, none, owner];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AuthorAssociation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AuthorAssociation($value)'; } 
 }
