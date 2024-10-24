import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/signin_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();

  createUserWithEmailAndPassword() {}

  @override
  Widget build(BuildContext context) {
    //Scaffoldคือหน้าที่มีNav Bar
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[400],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../../assets/images/crane_game_arm_yowai.png', 
              width: 50, 
              height: 50, 
            ),
            const SizedBox(width: 8.0),
              Text("Claw Claze",
                textAlign:TextAlign.center,
                style:GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Colors.deepPurple[200],
                ),
              ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),//กำหนด padding แบบ manual
      child: Form(
        child: Column(
          children: [
            // แก้ const เป็น Spacer()
            // const SizedBox(
            //   height: 20,
            const Spacer(),
            Text("Welcome to our community.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                color: Colors.deepPurple[400],
              ),
            ),
            Text("\nTo get started, please provide your information and create an account.\n",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(
              height: 30,
            ),             
            //เรียกmy_textfield.dart มีการร้องขอ parameter จาก required this.???
            MyTextField(
              controller: fullnameController,
              hintText: "Enter your name.",
              obscureText: false,
              labelText: "Name",
            ),        
            const SizedBox(
              height: 20,
            ),                
            MyTextField(
              controller: emailController,
              hintText: "Enter your email.",
              obscureText: false,
              labelText: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: passwordController,
              hintText: "Enter your password.",
              obscureText: true,
              labelText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),       
            MyTextField(
              controller: repasswordController,
              hintText: "Enter your password again.",
              obscureText: true,
              labelText: "Re-password",
            ),                 
            const SizedBox(
              height: 25,
            ),
            //เรียกmy_button.dart มีการร้องขอ parameter จาก required this.???
            MyButton(onTap: createUserWithEmailAndPassword, hinText: 'Sign Up'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have a member?',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  width: 1,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    );
                  }, 
                  child: Text(
                    'Sign in.',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepPurple[400],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
      ),
    );
  }
}
