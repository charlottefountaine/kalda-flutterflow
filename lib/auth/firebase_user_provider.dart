import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KaldaFirebaseUser {
  KaldaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KaldaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KaldaFirebaseUser> kaldaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<KaldaFirebaseUser>((user) => currentUser = KaldaFirebaseUser(user));
