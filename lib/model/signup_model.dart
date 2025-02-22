// model/signup_model.dart
class SignupModel {
  final String firstName;
  final String lastName;
  final String email;
  final String uid;

  SignupModel(this.firstName, this.lastName, this.email, this.uid);

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'uid': uid,
    };
  
}}