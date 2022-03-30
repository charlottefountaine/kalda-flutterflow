// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gratitude_journal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GratitudeJournalRecord> _$gratitudeJournalRecordSerializer =
    new _$GratitudeJournalRecordSerializer();

class _$GratitudeJournalRecordSerializer
    implements StructuredSerializer<GratitudeJournalRecord> {
  @override
  final Iterable<Type> types = const [
    GratitudeJournalRecord,
    _$GratitudeJournalRecord
  ];
  @override
  final String wireName = 'GratitudeJournalRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GratitudeJournalRecord object,
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
    value = object.entryText;
    if (value != null) {
      result
        ..add('entryText')
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
  GratitudeJournalRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GratitudeJournalRecordBuilder();

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
        case 'entryText':
          result.entryText = serializers.deserialize(value,
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

class _$GratitudeJournalRecord extends GratitudeJournalRecord {
  @override
  final DocumentReference<Object> userRef;
  @override
  final String entryText;
  @override
  final DateTime postTime;
  @override
  final DocumentReference<Object> reference;

  factory _$GratitudeJournalRecord(
          [void Function(GratitudeJournalRecordBuilder) updates]) =>
      (new GratitudeJournalRecordBuilder()..update(updates)).build();

  _$GratitudeJournalRecord._(
      {this.userRef, this.entryText, this.postTime, this.reference})
      : super._();

  @override
  GratitudeJournalRecord rebuild(
          void Function(GratitudeJournalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GratitudeJournalRecordBuilder toBuilder() =>
      new GratitudeJournalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GratitudeJournalRecord &&
        userRef == other.userRef &&
        entryText == other.entryText &&
        postTime == other.postTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userRef.hashCode), entryText.hashCode),
            postTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GratitudeJournalRecord')
          ..add('userRef', userRef)
          ..add('entryText', entryText)
          ..add('postTime', postTime)
          ..add('reference', reference))
        .toString();
  }
}

class GratitudeJournalRecordBuilder
    implements Builder<GratitudeJournalRecord, GratitudeJournalRecordBuilder> {
  _$GratitudeJournalRecord _$v;

  DocumentReference<Object> _userRef;
  DocumentReference<Object> get userRef => _$this._userRef;
  set userRef(DocumentReference<Object> userRef) => _$this._userRef = userRef;

  String _entryText;
  String get entryText => _$this._entryText;
  set entryText(String entryText) => _$this._entryText = entryText;

  DateTime _postTime;
  DateTime get postTime => _$this._postTime;
  set postTime(DateTime postTime) => _$this._postTime = postTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  GratitudeJournalRecordBuilder() {
    GratitudeJournalRecord._initializeBuilder(this);
  }

  GratitudeJournalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _entryText = $v.entryText;
      _postTime = $v.postTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GratitudeJournalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GratitudeJournalRecord;
  }

  @override
  void update(void Function(GratitudeJournalRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GratitudeJournalRecord build() {
    final _$result = _$v ??
        new _$GratitudeJournalRecord._(
            userRef: userRef,
            entryText: entryText,
            postTime: postTime,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
