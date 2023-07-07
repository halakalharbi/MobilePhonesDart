import 'dart:io';

abstract class MobilePhones {
  String brand;
  String model;
  int price;

  MobilePhones(this.brand, this.model, this.price);

  void displayDetails() {
    print("Brand: $brand");
    print("Model: $model");
    print("Price: \$${price.toString()}");
  }

  static MobilePhones? selectPhone(String mobileType) {
    switch (mobileType) {
      case 'ios':
        print("Please, Choose the type of the Mobile:");
        print("1. iPhone 11 - Price: \$1000");
        print("2. iPhone 12 - Price: \$1200");
        print("3. iPhone 13 - Price: \$1300");
        print("Please enter the type number (1, 2, or 3):");
        int typeNumber = int.parse(stdin.readLineSync()!);

        switch (typeNumber) {
          case 1:
            return IPhoneBrands("iPhone 11", 1000);
          case 2:
            return IPhoneBrands("iPhone 12", 1200);
          case 3:
            return IPhoneBrands("iPhone 13", 1300);
          default:
            print("Invalid model number selection.");
            return null;
        }

      case 'android':
        print("Please, Choose the type of the Mobile Phone:");
        print("1. Galaxy S20 - Price: \$1000");
        print("2. Galaxy S21 - Price: \$1200");
        print("3. Galaxy S22 - Price: \$1300");
        print("Please enter the model number (1, 2, or 3):");
        int typeNumber = int.parse(stdin.readLineSync()!);

        switch (typeNumber) {
          case 1:
            return AndroidBrands("Galaxy S20", 1000);
          case 2:
            return AndroidBrands("Galaxy S21", 1200);
          case 3:
            return AndroidBrands("Galaxy S22", 1300);
          default:
            print("Invalid model number selection.");
            return null;
        }

      default:
        return null;
    }
  }
}

class AndroidBrands extends MobilePhones {
  AndroidBrands(String model, int price) : super("Samsung", model, price);
}

class IPhoneBrands extends MobilePhones {
  IPhoneBrands(String model, int price) : super("iOS", model, price);
}
