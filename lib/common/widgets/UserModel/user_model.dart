import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_store/utils/formatters/formatter.dart';

/// Model class Representing User data
class UserModel {
  // Keep those values final which you do not want to update

  final String id;
  String firstName;
  String lastName;

  final String userName;
  final String email;
  final String phoneNumber;
  final String profilePicture;

  /// Constructor for user model

 UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
});

 /// Helper Function to get the full name
  String get fullName => '$firstName $lastName';

  /// Helper function format phone number
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

  /// Static function to split full name  into first name last name
  static List<String> nameParts (fullName) => fullName.split('');


  /// Static function to generate a user name form the full name
   static String generateUserName(fullName) {
     List<String> nameParts = fullName.split('');
     String firstName = nameParts[0].toLowerCase();
     String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

     String camelCaseUserName = '$firstName$lastName'; // combine first name and last name
     String userNameWithPrefix = 'cwt_$camelCaseUserName'; // add cwt prefix
     return userNameWithPrefix;
   }

/// Static function to create an empty user model
 static UserModel empty() => UserModel(
     id: '',
     firstName: '',
     lastName: '',
     userName: '',
     email: '',
     phoneNumber: '',
     profilePicture: '');

   /// Convert model to JSON structure for starting data in firebase.
   Map<String, dynamic> toJson() {
     return {
       'FirstName': firstName,
       'LastName' : lastName,
       'UserName' : userName,
       'Email'    : email,
       'PhoneNumber': phoneNumber,
       'ProfilePicture': profilePicture,
     };
   }

///  Factory method to create a userModel from a firebase document snapshot.
     factory UserModel.fromSnapshot(DocumentSnapshot<Map<String,dynamic>> document) {
     if(document.data() != null) {
       final data = document.data()!;
       return UserModel(
           id: document.id,
           firstName: data['FirstName'],
           lastName: data['lastName'],
           userName: data['userName'],
           email: data['email'],
           phoneNumber: data['phoneNumber'],
           profilePicture: data['profilePicture']
       );
     }
     return empty();
     }



}