import 'dart:io';
import 'MobilePhones.dart';
import 'OrderDetails.dart';

void main() {
  print("\t*****Welcome to Hala Phone Store*****");

  print("1- Enter your first name:");
  String firstName = stdin.readLineSync()!;

  print("2- Enter your last name:");
  String lastName = stdin.readLineSync()!;

  print("3- Enter the type of Mobile Phone you want:" +
      "\nType IOS if you want IOS,\nType Android if you want Android: ");
  String mobileType = stdin.readLineSync()!;

  MobilePhones? selectedPhone = MobilePhones.selectPhone(mobileType);

  if (selectedPhone != null) {
    OrderDetails order =
        OrderDetails(selectedPhone, firstName, lastName, mobileType);
    order.printOrder();
  } else {
    print("Invalid mobile phone type.");
  }
}
