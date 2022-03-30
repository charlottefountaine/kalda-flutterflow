// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authors_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthorsRecord> _$authorsRecordSerializer =
    new _$AuthorsRecordSerializer();

class _$AuthorsRecordSerializer implements StructuredSerializer<AuthorsRecord> {
  @override
  final Iterable<Type> types = const [AuthorsRecord, _$AuthorsRecord];
  @override
  final String wireName = 'AuthorsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AuthorsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileImage;
    if (value != null) {
      result
        ..add('profileImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AuthorsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profileImage':
          result.profileImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthorsRecord extends AuthorsRecord {
  @override
  final String name;
  @override
  final String profileImage;
  @override
  final String description;
  @override
  final DocumentReference<Object> reference;

  factory _$AuthorsRecord([void Function(AuthorsRecordBuilder) updates]) =>
      (new AuthorsRecordBuilder()..update(updates)).build();

  _$AuthorsRecord._(
      {this.name, this.profileImage, this.description, this.reference})
      : super._();

  @override
  AuthorsRecord rebuild(void Function(AuthorsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorsRecordBuilder toBuilder() => new AuthorsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorsRecord &&
        name == other.name &&
        profileImage == other.profileImage &&
        description == other.description &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), profileImage.hashCode),
            description.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthorsRecord')
          ..add('name', name)
          ..add('profileImage', profileImage)
          ..add('description', description)
          ..add('reference', reference))
        .toString();
  }
}

class AuthorsRecordBuilder
    implements Builder<AuthorsRecord, AuthorsRecordBuilder> {
  _$AuthorsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _profileImage;
  String get profileImage => _$this._profileImage;
  set profileImage(String profileImage) => _$this._profileImage = profileImage;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AuthorsRecordBuilder() {
    AuthorsRecord._initializeBuilder(this);
  }

  AuthorsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _profileImage = $v.profileImage;
      _description = $v.description;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorsRecord;
  }

  @override
  void update(void Function(AuthorsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthorsRecord build() {
    final _$result = _$v ??
        new _$AuthorsRecord._(
            name: name,
            profileImage: profileImage,
            description: description,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
