import 'classes/bank_account.dart';
import 'classes/student.dart';

void main() {
  // Bank Account
  BankAccount bankAccount1 = BankAccount(234657, 24000, "Current", 2.3);
  bankAccount1.deposite(1000);
  bankAccount1.withDraw(26000);
  bankAccount1.addInterest();
  bankAccount1.display();
  BankAccount bankAccount2 = BankAccount(125436, 21000, "Saving", 2.4);
  bankAccount2.deposite(1000);
  bankAccount2.withDraw(20000);
  bankAccount2.addInterest();
  bankAccount2.display();

  // Student
  Student student1 = Student("Ammar", 2345, ["Math", "Chemistry", "Physics"]);
  student1.addCourse("Computer");
  student1.displayCourses();

  Student student2 =
      Student("Ahmed", 6857, ["Mobile App Developer", "AI ChatBot Developer"]);
  student2.addCourse("MERN Stack Developer");
  student2.dropCourse("AI ChatBot Developer");
  student2.displayCourses();
}
