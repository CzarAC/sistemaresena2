import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "rating" field.
  List<int>? _rating;
  List<int> get rating => _rating ?? const [];
  bool hasRating() => _rating != null;

  // "postlikedBy" field.
  List<DocumentReference>? _postlikedBy;
  List<DocumentReference> get postlikedBy => _postlikedBy ?? const [];
  bool hasPostlikedBy() => _postlikedBy != null;

  // "comentarios" field.
  DocumentReference? _comentarios;
  DocumentReference? get comentarios => _comentarios;
  bool hasComentarios() => _comentarios != null;

  void _initializeFields() {
    _username = snapshotData['username'] as String?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _video = snapshotData['video'] as String?;
    _foto = snapshotData['foto'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _comentario = snapshotData['comentario'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _rating = getDataList(snapshotData['rating']);
    _postlikedBy = getDataList(snapshotData['postlikedBy']);
    _comentarios = snapshotData['comentarios'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? username,
  String? email,
  String? photoUrl,
  String? video,
  String? foto,
  String? descripcion,
  String? comentario,
  DateTime? date,
  DocumentReference? comentarios,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'username': username,
      'email': email,
      'photo_url': photoUrl,
      'video': video,
      'foto': foto,
      'descripcion': descripcion,
      'comentario': comentario,
      'date': date,
      'comentarios': comentarios,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.username == e2?.username &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.video == e2?.video &&
        e1?.foto == e2?.foto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.comentario == e2?.comentario &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.rating, e2?.rating) &&
        listEquality.equals(e1?.postlikedBy, e2?.postlikedBy) &&
        e1?.comentarios == e2?.comentarios;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.username,
        e?.email,
        e?.photoUrl,
        e?.video,
        e?.foto,
        e?.descripcion,
        e?.comentario,
        e?.date,
        e?.rating,
        e?.postlikedBy,
        e?.comentarios
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
