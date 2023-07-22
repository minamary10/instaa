import 'package:firebase_storage/firebase_storage.dart';

getImgUrl({
  required imgName,
  required imgPath,
}) async {
  // Upload image to firebase storage
  final storageRef = FirebaseStorage.instance.ref("UserProfileImg/$imgName");

  // use this code if u are using flutter web
  UploadTask uploadTask = storageRef.putData(imgPath);
  TaskSnapshot snap = await uploadTask;

// Get img url
  String urll = await snap.ref.getDownloadURL();

  return urll;

// Store img url in firestore[database]
}
