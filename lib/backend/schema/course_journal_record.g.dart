// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_journal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CourseJournalRecord> _$courseJournalRecordSerializer =
    new _$CourseJournalRecordSerializer();

class _$CourseJournalRecordSerializer
    implements StructuredSerializer<CourseJournalRecord> {
  @override
  final Iterable<Type> types = const [
    CourseJournalRecord,
    _$CourseJournalRecord
  ];
  @override
  final String wireName = 'CourseJournalRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CourseJournalRecord object,
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
    value = object.courseRef;
    if (value != null) {
      result
        ..add('courseRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.question;
    if (value != null) {
      result
        ..add('question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postTime;
    if (value != null) {
      result
        ..add('postTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  CourseJournalRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CourseJournalRecordBuilder();

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
        case 'courseRef':
          result.courseRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postTime':
          result.postTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$CourseJournalRecord extends CourseJournalRecord {
  @override
  final DocumentReference<Object> userRef;
  @override
  final DocumentReference<Object> courseRef;
  @override
  final String question;
  @override
  final String answer;
  @override
  final DateTime postTime;
  @override
  final DocumentReference<Object> reference;

  factory _$CourseJournalRecord(
          [void Function(CourseJournalRecordBuilder) updates]) =>
      (new CourseJournalRecordBuilder()..update(updates)).build();

  _$CourseJournalRecord._(
      {this.userRef,
      this.courseRef,
      this.question,
      this.answer,
      this.postTime,
      this.reference})
      : super._();

  @override
  CourseJournalRecord rebuild(
          void Function(CourseJournalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseJournalRecordBuilder toBuilder() =>
      new CourseJournalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CourseJournalRecord &&
        userRef == other.userRef &&
        courseRef == other.courseRef &&
        question == other.question &&
        answer == other.answer &&
        postTime == other.postTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userRef.hashCode), courseRef.hashCode),
                    question.hashCode),
                answer.hashCode),
            postTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseJournalRecord')
          ..add('userRef', userRef)
          ..add('courseRef', courseRef)
          ..add('question', question)
          ..add('answer', answer)
          ..add('postTime', postTime)
          ..add('reference', reference))
        .toString();
  }
}

class CourseJournalRecordBuilder
    implements Builder<CourseJournalRecord, CourseJournalRecordBuilder> {
  _$CourseJournalRecord _$v;

  DocumentReference<Object> _userRef;
  DocumentReference<Object> get userRef => _$this._userRef;
  set userRef(DocumentReference<Object> userRef) => _$this._userRef = userRef;

  DocumentReference<Object> _courseRef;
  DocumentReference<Object> get courseRef => _$this._courseRef;
  set courseRef(DocumentReference<Object> courseRef) =>
      _$this._courseRef = courseRef;

  String _question;
  String get question => _$this._question;
  set question(String question) => _$this._question = question;

  String _answer;
  String get answer => _$this._answer;
  set answer(String answer) => _$this._answer = answer;

  DateTime _postTime;
  DateTime get postTime => _$this._postTime;
  set postTime(DateTime postTime) => _$this._postTime = postTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CourseJournalRecordBuilder() {
    CourseJournalRecord._initializeBuilder(this);
  }

  CourseJournalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _courseRef = $v.courseRef;
      _question = $v.question;
      _answer = $v.answer;
      _postTime = $v.postTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseJournalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CourseJournalRecord;
  }

  @override
  void update(void Function(CourseJournalRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseJournalRecord build() {
    final _$result = _$v ??
        new _$CourseJournalRecord._(
            userRef: userRef,
            courseRef: courseRef,
            question: question,
            answer: answer,
            postTime: postTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
