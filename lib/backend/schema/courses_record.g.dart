// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoursesRecord> _$coursesRecordSerializer =
    new _$CoursesRecordSerializer();

class _$CoursesRecordSerializer implements StructuredSerializer<CoursesRecord> {
  @override
  final Iterable<Type> types = const [CoursesRecord, _$CoursesRecord];
  @override
  final String wireName = 'CoursesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CoursesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.courseName;
    if (value != null) {
      result
        ..add('courseName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoRefs;
    if (value != null) {
      result
        ..add('videoRefs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.courseImage;
    if (value != null) {
      result
        ..add('courseImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.courseType;
    if (value != null) {
      result
        ..add('courseType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.authorsRef;
    if (value != null) {
      result
        ..add('authorsRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.whatLearn;
    if (value != null) {
      result
        ..add('WhatLearn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.howWork;
    if (value != null) {
      result
        ..add('HowWork')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessions;
    if (value != null) {
      result
        ..add('sessions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.courseLength;
    if (value != null) {
      result
        ..add('courseLength')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numberOfLessons;
    if (value != null) {
      result
        ..add('numberOfLessons')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.courseEntryImage;
    if (value != null) {
      result
        ..add('courseEntryImage')
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
  CoursesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoursesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'courseName':
          result.courseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videoRefs':
          result.videoRefs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'courseImage':
          result.courseImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'courseType':
          result.courseType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'authorsRef':
          result.authorsRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'WhatLearn':
          result.whatLearn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'HowWork':
          result.howWork = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sessions':
          result.sessions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'courseLength':
          result.courseLength = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'numberOfLessons':
          result.numberOfLessons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'courseEntryImage':
          result.courseEntryImage = serializers.deserialize(value,
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

class _$CoursesRecord extends CoursesRecord {
  @override
  final String courseName;
  @override
  final BuiltList<DocumentReference<Object>> videoRefs;
  @override
  final String courseImage;
  @override
  final int courseType;
  @override
  final BuiltList<DocumentReference<Object>> authorsRef;
  @override
  final String whatLearn;
  @override
  final String howWork;
  @override
  final BuiltList<String> sessions;
  @override
  final int courseLength;
  @override
  final int numberOfLessons;
  @override
  final String courseEntryImage;
  @override
  final DocumentReference<Object> reference;

  factory _$CoursesRecord([void Function(CoursesRecordBuilder) updates]) =>
      (new CoursesRecordBuilder()..update(updates)).build();

  _$CoursesRecord._(
      {this.courseName,
      this.videoRefs,
      this.courseImage,
      this.courseType,
      this.authorsRef,
      this.whatLearn,
      this.howWork,
      this.sessions,
      this.courseLength,
      this.numberOfLessons,
      this.courseEntryImage,
      this.reference})
      : super._();

  @override
  CoursesRecord rebuild(void Function(CoursesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoursesRecordBuilder toBuilder() => new CoursesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoursesRecord &&
        courseName == other.courseName &&
        videoRefs == other.videoRefs &&
        courseImage == other.courseImage &&
        courseType == other.courseType &&
        authorsRef == other.authorsRef &&
        whatLearn == other.whatLearn &&
        howWork == other.howWork &&
        sessions == other.sessions &&
        courseLength == other.courseLength &&
        numberOfLessons == other.numberOfLessons &&
        courseEntryImage == other.courseEntryImage &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, courseName.hashCode),
                                                videoRefs.hashCode),
                                            courseImage.hashCode),
                                        courseType.hashCode),
                                    authorsRef.hashCode),
                                whatLearn.hashCode),
                            howWork.hashCode),
                        sessions.hashCode),
                    courseLength.hashCode),
                numberOfLessons.hashCode),
            courseEntryImage.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoursesRecord')
          ..add('courseName', courseName)
          ..add('videoRefs', videoRefs)
          ..add('courseImage', courseImage)
          ..add('courseType', courseType)
          ..add('authorsRef', authorsRef)
          ..add('whatLearn', whatLearn)
          ..add('howWork', howWork)
          ..add('sessions', sessions)
          ..add('courseLength', courseLength)
          ..add('numberOfLessons', numberOfLessons)
          ..add('courseEntryImage', courseEntryImage)
          ..add('reference', reference))
        .toString();
  }
}

class CoursesRecordBuilder
    implements Builder<CoursesRecord, CoursesRecordBuilder> {
  _$CoursesRecord _$v;

  String _courseName;
  String get courseName => _$this._courseName;
  set courseName(String courseName) => _$this._courseName = courseName;

  ListBuilder<DocumentReference<Object>> _videoRefs;
  ListBuilder<DocumentReference<Object>> get videoRefs =>
      _$this._videoRefs ??= new ListBuilder<DocumentReference<Object>>();
  set videoRefs(ListBuilder<DocumentReference<Object>> videoRefs) =>
      _$this._videoRefs = videoRefs;

  String _courseImage;
  String get courseImage => _$this._courseImage;
  set courseImage(String courseImage) => _$this._courseImage = courseImage;

  int _courseType;
  int get courseType => _$this._courseType;
  set courseType(int courseType) => _$this._courseType = courseType;

  ListBuilder<DocumentReference<Object>> _authorsRef;
  ListBuilder<DocumentReference<Object>> get authorsRef =>
      _$this._authorsRef ??= new ListBuilder<DocumentReference<Object>>();
  set authorsRef(ListBuilder<DocumentReference<Object>> authorsRef) =>
      _$this._authorsRef = authorsRef;

  String _whatLearn;
  String get whatLearn => _$this._whatLearn;
  set whatLearn(String whatLearn) => _$this._whatLearn = whatLearn;

  String _howWork;
  String get howWork => _$this._howWork;
  set howWork(String howWork) => _$this._howWork = howWork;

  ListBuilder<String> _sessions;
  ListBuilder<String> get sessions =>
      _$this._sessions ??= new ListBuilder<String>();
  set sessions(ListBuilder<String> sessions) => _$this._sessions = sessions;

  int _courseLength;
  int get courseLength => _$this._courseLength;
  set courseLength(int courseLength) => _$this._courseLength = courseLength;

  int _numberOfLessons;
  int get numberOfLessons => _$this._numberOfLessons;
  set numberOfLessons(int numberOfLessons) =>
      _$this._numberOfLessons = numberOfLessons;

  String _courseEntryImage;
  String get courseEntryImage => _$this._courseEntryImage;
  set courseEntryImage(String courseEntryImage) =>
      _$this._courseEntryImage = courseEntryImage;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CoursesRecordBuilder() {
    CoursesRecord._initializeBuilder(this);
  }

  CoursesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _courseName = $v.courseName;
      _videoRefs = $v.videoRefs?.toBuilder();
      _courseImage = $v.courseImage;
      _courseType = $v.courseType;
      _authorsRef = $v.authorsRef?.toBuilder();
      _whatLearn = $v.whatLearn;
      _howWork = $v.howWork;
      _sessions = $v.sessions?.toBuilder();
      _courseLength = $v.courseLength;
      _numberOfLessons = $v.numberOfLessons;
      _courseEntryImage = $v.courseEntryImage;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoursesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoursesRecord;
  }

  @override
  void update(void Function(CoursesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoursesRecord build() {
    _$CoursesRecord _$result;
    try {
      _$result = _$v ??
          new _$CoursesRecord._(
              courseName: courseName,
              videoRefs: _videoRefs?.build(),
              courseImage: courseImage,
              courseType: courseType,
              authorsRef: _authorsRef?.build(),
              whatLearn: whatLearn,
              howWork: howWork,
              sessions: _sessions?.build(),
              courseLength: courseLength,
              numberOfLessons: numberOfLessons,
              courseEntryImage: courseEntryImage,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'videoRefs';
        _videoRefs?.build();

        _$failedField = 'authorsRef';
        _authorsRef?.build();

        _$failedField = 'sessions';
        _sessions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CoursesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
