// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosRecord> _$videosRecordSerializer =
    new _$VideosRecordSerializer();

class _$VideosRecordSerializer implements StructuredSerializer<VideosRecord> {
  @override
  final Iterable<Type> types = const [VideosRecord, _$VideosRecord];
  @override
  final String wireName = 'VideosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, VideosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoLink;
    if (value != null) {
      result
        ..add('video-link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.journalNoteText;
    if (value != null) {
      result
        ..add('journalNoteText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.courseRef;
    if (value != null) {
      result
        ..add('courseRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  VideosRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video-link':
          result.videoLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'journalNoteText':
          result.journalNoteText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'courseRef':
          result.courseRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$VideosRecord extends VideosRecord {
  @override
  final String name;
  @override
  final String videoLink;
  @override
  final String journalNoteText;
  @override
  final int index;
  @override
  final DocumentReference<Object> courseRef;
  @override
  final DocumentReference<Object> reference;

  factory _$VideosRecord([void Function(VideosRecordBuilder) updates]) =>
      (new VideosRecordBuilder()..update(updates)).build();

  _$VideosRecord._(
      {this.name,
      this.videoLink,
      this.journalNoteText,
      this.index,
      this.courseRef,
      this.reference})
      : super._();

  @override
  VideosRecord rebuild(void Function(VideosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosRecordBuilder toBuilder() => new VideosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosRecord &&
        name == other.name &&
        videoLink == other.videoLink &&
        journalNoteText == other.journalNoteText &&
        index == other.index &&
        courseRef == other.courseRef &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), videoLink.hashCode),
                    journalNoteText.hashCode),
                index.hashCode),
            courseRef.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosRecord')
          ..add('name', name)
          ..add('videoLink', videoLink)
          ..add('journalNoteText', journalNoteText)
          ..add('index', index)
          ..add('courseRef', courseRef)
          ..add('reference', reference))
        .toString();
  }
}

class VideosRecordBuilder
    implements Builder<VideosRecord, VideosRecordBuilder> {
  _$VideosRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _videoLink;
  String get videoLink => _$this._videoLink;
  set videoLink(String videoLink) => _$this._videoLink = videoLink;

  String _journalNoteText;
  String get journalNoteText => _$this._journalNoteText;
  set journalNoteText(String journalNoteText) =>
      _$this._journalNoteText = journalNoteText;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  DocumentReference<Object> _courseRef;
  DocumentReference<Object> get courseRef => _$this._courseRef;
  set courseRef(DocumentReference<Object> courseRef) =>
      _$this._courseRef = courseRef;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VideosRecordBuilder() {
    VideosRecord._initializeBuilder(this);
  }

  VideosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _videoLink = $v.videoLink;
      _journalNoteText = $v.journalNoteText;
      _index = $v.index;
      _courseRef = $v.courseRef;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideosRecord;
  }

  @override
  void update(void Function(VideosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideosRecord build() {
    final _$result = _$v ??
        new _$VideosRecord._(
            name: name,
            videoLink: videoLink,
            journalNoteText: journalNoteText,
            index: index,
            courseRef: courseRef,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
