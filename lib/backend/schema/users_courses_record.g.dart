// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_courses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersCoursesRecord> _$usersCoursesRecordSerializer =
    new _$UsersCoursesRecordSerializer();

class _$UsersCoursesRecordSerializer
    implements StructuredSerializer<UsersCoursesRecord> {
  @override
  final Iterable<Type> types = const [UsersCoursesRecord, _$UsersCoursesRecord];
  @override
  final String wireName = 'UsersCoursesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersCoursesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.refCourse;
    if (value != null) {
      result
        ..add('refCourse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dUPnumberOfLessons;
    if (value != null) {
      result
        ..add('DUPnumberOfLessons')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.courseFinished;
    if (value != null) {
      result
        ..add('courseFinished')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  UsersCoursesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersCoursesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userRef':
          result.userRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'refCourse':
          result.refCourse = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'DUPnumberOfLessons':
          result.dUPnumberOfLessons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'courseFinished':
          result.courseFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$UsersCoursesRecord extends UsersCoursesRecord {
  @override
  final DocumentReference<Object> userRef;
  @override
  final DocumentReference<Object> refCourse;
  @override
  final int progress;
  @override
  final int dUPnumberOfLessons;
  @override
  final bool courseFinished;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersCoursesRecord(
          [void Function(UsersCoursesRecordBuilder) updates]) =>
      (new UsersCoursesRecordBuilder()..update(updates)).build();

  _$UsersCoursesRecord._(
      {this.userRef,
      this.refCourse,
      this.progress,
      this.dUPnumberOfLessons,
      this.courseFinished,
      this.reference})
      : super._();

  @override
  UsersCoursesRecord rebuild(
          void Function(UsersCoursesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersCoursesRecordBuilder toBuilder() =>
      new UsersCoursesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersCoursesRecord &&
        userRef == other.userRef &&
        refCourse == other.refCourse &&
        progress == other.progress &&
        dUPnumberOfLessons == other.dUPnumberOfLessons &&
        courseFinished == other.courseFinished &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userRef.hashCode), refCourse.hashCode),
                    progress.hashCode),
                dUPnumberOfLessons.hashCode),
            courseFinished.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersCoursesRecord')
          ..add('userRef', userRef)
          ..add('refCourse', refCourse)
          ..add('progress', progress)
          ..add('dUPnumberOfLessons', dUPnumberOfLessons)
          ..add('courseFinished', courseFinished)
          ..add('reference', reference))
        .toString();
  }
}

class UsersCoursesRecordBuilder
    implements Builder<UsersCoursesRecord, UsersCoursesRecordBuilder> {
  _$UsersCoursesRecord _$v;

  DocumentReference<Object> _userRef;
  DocumentReference<Object> get userRef => _$this._userRef;
  set userRef(DocumentReference<Object> userRef) => _$this._userRef = userRef;

  DocumentReference<Object> _refCourse;
  DocumentReference<Object> get refCourse => _$this._refCourse;
  set refCourse(DocumentReference<Object> refCourse) =>
      _$this._refCourse = refCourse;

  int _progress;
  int get progress => _$this._progress;
  set progress(int progress) => _$this._progress = progress;

  int _dUPnumberOfLessons;
  int get dUPnumberOfLessons => _$this._dUPnumberOfLessons;
  set dUPnumberOfLessons(int dUPnumberOfLessons) =>
      _$this._dUPnumberOfLessons = dUPnumberOfLessons;

  bool _courseFinished;
  bool get courseFinished => _$this._courseFinished;
  set courseFinished(bool courseFinished) =>
      _$this._courseFinished = courseFinished;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersCoursesRecordBuilder() {
    UsersCoursesRecord._initializeBuilder(this);
  }

  UsersCoursesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _refCourse = $v.refCourse;
      _progress = $v.progress;
      _dUPnumberOfLessons = $v.dUPnumberOfLessons;
      _courseFinished = $v.courseFinished;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersCoursesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersCoursesRecord;
  }

  @override
  void update(void Function(UsersCoursesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersCoursesRecord build() {
    final _$result = _$v ??
        new _$UsersCoursesRecord._(
            userRef: userRef,
            refCourse: refCourse,
            progress: progress,
            dUPnumberOfLessons: dUPnumberOfLessons,
            courseFinished: courseFinished,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
