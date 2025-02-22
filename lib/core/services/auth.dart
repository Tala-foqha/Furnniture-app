// core/services/auth.dart

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:furniture_app/core/services/firestore_services.dart';
import 'package:furniture_app/core/utils/api_endpoints.dart';
import 'package:furniture_app/model/signup_model.dart';

abstract class Auth{
  Future<void>signUpWithemailAndpassword({required String email,required String password,required String firstName,required String lastName});
  Future<void>loginWhithEmailAndPassword({required email,required password});

}
class AuthImpl implements Auth{
  final FirebaseAuth firebaseAuth =  FirebaseAuth.instance;
 FirestoreService fireStoreServices=FirestoreService.instance;
 
  @override
  Future<void> signUpWithemailAndpassword({required String email,
   required String password,required String firstName,required String lastName}) async{
    

    try {
  var user = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
   // ignore: non_constant_identifier_names
   var SignUpModel=SignupModel(firstName,
    lastName, 
    email,
     user.user!.uid);
  await fireStoreServices.setData(
    path:ApiEndpoints.users(user.user!.uid) ,
     data: SignUpModel.toMap(),
  
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
  log('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    log('The account already exists for that email.');
  }
} catch (e) {
  print(e);
} }

  @override
  Future<void> loginWhithEmailAndPassword({required email, required password}) async{
   try {
   await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    throw('No user found for that email.');
  } else if (e.code == 'wrong-password') {
   throw('Wrong password provided for that user.');
  }else if(e.code =='invalid-credential'){
throw('email or password is in valid');
  }else{
    throw(e.toString());
  }
}

catch(e){
  throw(e.toString());
}
 
  }









  }
  
 