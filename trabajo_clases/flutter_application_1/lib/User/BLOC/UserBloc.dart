import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/User/repository/ReposytoriAuth.dart';

class BlocUser implements Bloc {
  final _autRepository = AutRepository();

  Future<UserCredential> singIn() {
    return _autRepository.singInFirebase();
  }

  @override
  void dispose() {
    
  }
}
