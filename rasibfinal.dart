import 'dart:io';

List<String> arr1 = List.filled(20, '');
List<String> arr2 = List.filled(20, '');
List<String> arr3 = List.filled(20, '');
List<String> arr4 = List.filled(20, '');
int total = 0;

void enter() {
  stdout.write("\n\n          HOW MANY STUDENTS YOU WANT TO ENTER?? : ");
  int choice = int.parse(stdin.readLineSync()!);
  if (total == 0) {
    total = choice + total;
    for (int i = 0; i < choice; i++) {
      stdout.write("\n          ENTER THE DATA OF STUDENT ${i + 1}");
      stdout.write("\n          ***************************\n\n");
      stdout.write("          Enter Name     :  ");
      arr1[i] = stdin.readLineSync()!;
      stdout.write("          Enter Roll no  :  ");
      arr2[i] = stdin.readLineSync()!;
      stdout.write("          Enter Subject  :  ");
      arr3[i] = stdin.readLineSync()!;
      stdout.write("          Enter Contact  :  ");
      arr4[i] = stdin.readLineSync()!;
    }

    print("");
  } else {
    for (int i = total; i < total + choice; i++) {
      stdout.write("\n          ENTER THE DATA OF STUDENT ${i + 1}");
      stdout.write("          ***************************\n\n");
      stdout.write("          Enter Name     :  ");
      arr1[i] = stdin.readLineSync()!;
      stdout.write("          Enter Roll no  :  ");
      arr2[i] = stdin.readLineSync()!;
      stdout.write("          Enter Subject  :  ");
      arr3[i] = stdin.readLineSync()!;
      stdout.write("          Enter Contact  :  ");
      arr4[i] = stdin.readLineSync()!;
    }
    total = choice + total;
  }
}

void show() {
  if (total == 0) {
    print("\n\n          NO DATA IS ENTERED");
    print("          ******************\n\n\n");
  } else {
    for (int i = 0; i < total; i++) {
      print("\n          DATA OF STUDENT ${i + 1}");
      print("          *****************\n\n");
      print("          Name     :  ${arr1[i]}");
      print("          Roll no  :  ${arr2[i]}");
      print("          Subject  :  ${arr3[i]}");
      print("          Contact  :  ${arr4[i]}\n\n\n");
    }
  }
}

void search() {
  if (total == 0) {
    print("\n\n          NO DATA IS ENTERED");
    print("          ******************\n\n\n");
  } else {
    stdout.write(
        "\n          ENTER THE ROLL NUMBER OF STUDENT WHICH YOU WANT TO SEARCH : ");
    String rollno = stdin.readLineSync()!;
    print(
        "\n          ************************************************************\n");
    for (int i = 0; i < total; i++) {
      if (rollno == arr2[i]) {
        print("\n          Name     :  ${arr1[i]}");
        print("          Roll no  :  ${arr2[i]}");
        print("          Subject  :  ${arr3[i]}");
        print("          Contact  :  ${arr4[i]}\n\n\n");
        print("          ************************");
        print("          * SEARCHING SUCCESSFUL *");
        print("          ************************\n\n");
      }
    }
    print("         Invalid roll number\n");
  }
}

void update() {
  if (total == 0) {
    print("\n\n          NO DATA IS ENTERED");
    print("          ******************\n\n\n");
  } else {
    stdout.write(
        "\n          ENTER THE ROLL NUMBER OF STUDENT WHICH YOU WANT TO UPDATE : ");
    String rollno = stdin.readLineSync()!;
    print(
        "\n          ************************************************************\n");
    for (int i = 0; i < total; i++) {
      if (rollno == arr2[i]) {
        print("\n          PREVIOUS DATA");
        print("          *************\n\n");
        print("          DATA OF STUDENT ${i + 1}");
        print("          *****************\n");
        print("\n          Name     :  ${arr1[i]}");
        print("          Roll no  :  ${arr2[i]}");
        print("          Subject  :  ${arr3[i]}");
        print("          Contact  :  ${arr4[i]}");
        print("\n          ENTER NEW DATA");
        print("          **************\n");
        stdout.write("\n          Enter Name     :  ");
        arr1[i] = stdin.readLineSync()!;
        stdout.write("\n          Enter Roll no  :  ");
        arr2[i] = stdin.readLineSync()!;
        stdout.write("\n          Enter Subject  :  ");
        arr3[i] = stdin.readLineSync()!;
        stdout.write("\n          Enter Contact  :  ");
        arr4[i] = stdin.readLineSync()!;
        print("\n          RECORD UPDATED SUCCESSFULLY\n");
      }
    }
    print("         Invalid roll number\n");
  }
}

void deleterecord() {
  if (total == 0) {
    print("\n\n          NO DATA IS ENTERED");
    print("          ******************\n\n\n");
  } else {
    int a;
    stdout.write("\n\n       PRESS 1 TO DELETE ALL RECORD\n");
    stdout.write("          PRESS 2 TO DELETE SPECIFIC RECORD\n");
    stdout.write("          *********************************\n\n");
    stdout.write("          ENTER YOUR CHOICE : ");
    a = int.parse(stdin.readLineSync()!);
    if (a == 1) {
      total = 0;
      print("\n\n          ALL RECORD DELETED SUCCESSFULLY");
      print("          *******************************\n\n");
    } else if (a == 2) {
      stdout.write(
          "\n          ENTER THE ROLL NUMBER OF STUDENT WHICH YOU WANT TO DELETE : ");
      String rollno = stdin.readLineSync()!;
      print(
          "\n          ************************************************************");
      for (int i = 0; i < total; i++) {
        if (rollno == arr2[i]) {
          for (int j = i; j < total; j++) {
            arr1[j] = arr1[j + 1];
            arr2[j] = arr2[j + 1];
            arr3[j] = arr3[j + 1];
            arr4[j] = arr4[j + 1];
          }
          total--;
          print("\n          YOUR REQUIRED RECORD ID DELETED");
          print("          *******************************\n\n");
        }
      }
      print("         Invalid roll number\n");
    } else {
      print("          INVALID INPUT");
      print("          *************\n\n");
    }
  }
}

void showStudentsByCourse() {
  if (total == 0) {
    print("\n\n          NO DATA IS ENTERED");
    print("          ******************\n\n\n");
  } else {
    stdout.write("Enter the course name to show students: ");
    String courseName = stdin.readLineSync()!;
    print("\n\n          Students who selected $courseName");
    print("          ***********************************\n");
    for (int i = 0; i < total; i++) {
      if (arr3[i].toLowerCase() == courseName.toLowerCase()) {
        print("\n          DATA OF STUDENT ${i + 1}");
        print("          *****************\n\n");
        print("          Name     :  ${arr1[i]}");
        print("          Roll no  :  ${arr2[i]}");
        print("          Subject  :  ${arr3[i]}");
        print("          Contact  :  ${arr4[i]}\n\n\n");
      }
    }
  }
}

login() {
  int attempts = 4;
  // bool islogin = false;

  // while (islogin == false) {
  while (attempts > 0) {
    stdout.write('ENTER EMAIL : ');
    String email = stdin.readLineSync()!;
    stdout.write('ENTER PASSWORD : ');
    String pass = stdin.readLineSync()!;

    if ((email == "rasibahmed" && pass == "123456") ||
        (email == "f" && pass == "123") ||
        (email == "huzefa" && pass == "12345678"))
      // islogin = true;
      print("lOGIN SUCCESFULLY\n");

    while (true) {
      stdout.write("          Press 1 to enter data\n");
      stdout.write("          Press 2 to show data\n");
      stdout.write("          Press 3 to search data\n");
      stdout.write("          Press 4 to update data\n");
      stdout.write("          Press 5 to delete data\n");
      stdout.write("          Press 6 to course detail\n");
      stdout.write("          Press 7 to exit\n\n");
      stdout.write("          Enter Number from 1 to 6 : ");
      int value = int.parse(stdin.readLineSync()!);

      if (value == 1) {
        enter();
      } else if (value == 2) {
        show();
      } else if (value == 3) {
        search();
      } else if (value == 4) {
        update();
      } else if (value == 5) {
        deleterecord();
      } else if (value == 6) {
        showStudentsByCourse();
      } else if (value == 7) {
        print(
            "*************************************** MADE BY *************************************");
        print(
            "*                                                                                     *");
        print(
            "*                                        RASIB                                        *");
        print(
            "*                                        FAIZAN                                       *");
        print(
            "*                                        HUZAIFA                                      *");
        print(
            "*                                                                                     *");
        print(
            "******************************* THANK YOU FOR VISITING *********************************");
        exit(0);
      } else {
        print("Invalid input\n");
      }
    }
  }
}

void main() {
  print("\n                          *************");
  print("                            *  WELCOME  *");
  print("                            *************");
  print(
      "*********************************************************************");
  print(
      "*                                                                   *");
  print(
      "*                      SCHOOL MANAGEMENT SYSTEM                     *");
  print(
      "*                                                                   *");
  print(
      "*********************************************************************");
  print(
      "*                                                                   *");

  print("PRESS 1: ADMIN   LOGIN");
  print("PRESS ANY KEY :  Exit\n");

  stdout.write("Enter Your Answer :  ");
  int button = int.parse(stdin.readLineSync()!);
  if (button == 1) {
    login();
  } else {
    print("Thanks For visiting");
    exitCode;
  }
}
