import 'package:dart_sandbox/models/models.dart' show User;
import './linked_list.dart' show LinkedList;

LinkedList<User> buildUserList() {
  return LinkedList<User>()
    ..push(User("Liam", "Bennett", "liam.bennett@gmail.com"))
    ..push(User("Sophie", "Durand", "sophie.durand@orange.fr"))
    ..push(User("Marcus", "Lee", "marcus.lee@hotmail.com"))
    ..push(User("Emily", "Nguyen", "emily.nguyen@icloud.com"))
    ..push(User("Lucas", "Moreau", "lucas.moreau@laposte.net"))
    ..push(User("Amelia", "Johnson", "amelia.johnson@gmail.com"))
    ..push(User("Noah", "Smith", "noahsmith@protonmail.com"))
    ..push(User("Isla", "Taylor", "isla.taylor@live.com"))
    ..push(User("Ethan", "Wang", "ethan.wang@outlook.com"))
    ..push(User("Chloe", "Martin", "chloe.martin@yahoo.fr"))
    ..push(User("Nathan", "Scott", "nathan.scott@gmail.com"))
    ..push(User("Grace", "White", "grace.white@icloud.com"))
    ..push(User("Leo", "Dupont", "leo.dupont@free.fr"))
    ..push(User("Zoe", "Anderson", "zoe.anderson@gmail.com"))
    ..push(User("Oscar", "Lopez", "oscar.lopez@hotmail.com"))
    ..push(User("Mia", "Thompson", "mia.thompson@yahoo.com"))
    ..push(User("Thomas", "Brown", "thomas.brown@orange.fr"))
    ..push(User("Léa", "Petit", "lea.petit@laposte.net"));
}

void executeLinkedListExample() {
  final userList = buildUserList();
  print("\n Full userList \n");
  print(userList);

  print("\n userList.pop() \n");
  print(userList.pop());

  print("\n userList after pop \n");
  print(userList);

  userList.traverse((node) {
    if (node.data.email.contains("brown")) {
      print('\n userList.traverse email containing "brown" \n');
      print(node);
      return true;
    }
    return null;
  });
}
