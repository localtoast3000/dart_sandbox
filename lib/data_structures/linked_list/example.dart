import 'package:dart_sandbox/models/models.dart' show User;
import './linked_list.dart' show LinkedList;

LinkedList<User> buildUserList() {
  final userList = LinkedList<User>();

  userList.push(User("Liam", "Bennett", "liam.bennett@gmail.com"));
  userList.push(User("Sophie", "Durand", "sophie.durand@orange.fr"));
  userList.push(User("Marcus", "Lee", "marcus.lee@hotmail.com"));
  userList.push(User("Emily", "Nguyen", "emily.nguyen@icloud.com"));
  userList.push(User("Lucas", "Moreau", "lucas.moreau@laposte.net"));
  userList.push(User("Amelia", "Johnson", "amelia.johnson@gmail.com"));
  userList.push(User("Noah", "Smith", "noahsmith@protonmail.com"));
  userList.push(User("Isla", "Taylor", "isla.taylor@live.com"));
  userList.push(User("Ethan", "Wang", "ethan.wang@outlook.com"));
  userList.push(User("Chloe", "Martin", "chloe.martin@yahoo.fr"));
  userList.push(User("Nathan", "Scott", "nathan.scott@gmail.com"));
  userList.push(User("Grace", "White", "grace.white@icloud.com"));
  userList.push(User("Leo", "Dupont", "leo.dupont@free.fr"));
  userList.push(User("Zoe", "Anderson", "zoe.anderson@gmail.com"));
  userList.push(User("Oscar", "Lopez", "oscar.lopez@hotmail.com"));
  userList.push(User("Mia", "Thompson", "mia.thompson@yahoo.com"));
  userList.push(User("Thomas", "Brown", "thomas.brown@orange.fr"));
  userList.push(User("Léa", "Petit", "lea.petit@laposte.net"));

  return userList;
}

void executeLinkedListExample() {
  final userList = buildUserList();

  print(userList);

  final poppedUser = userList.pop();

  print(poppedUser);

  userList.traverse((node) {
    if (node.data.email.contains("brown")) {
      print(node);
      return true;
    }
    return null;
  });
}
