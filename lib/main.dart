import 'package:flutter/material.dart';
import 'menu.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: "Apen Belajar",
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

//Google Account PopUp
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Google Account"),
          content: const Text("Pilih Akun Google Anda!"),
          actions: [
            TextButton(
              child: const Text("Tutup"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

//Main Content
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(title: 
      const Text(
        'Login Page', 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          ),
          ),
          leading: const Icon(Icons.pages),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'With Your Account',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 20,),
                  Image.asset('assets/images/vish.png')
                ],
              ),
            ),

            const SizedBox(height: 50,),

            SizedBox(
              width: 240,
              height: 40,
              child : TextField(
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(24),
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 7,),

            SizedBox(
              width: 240,
              height: 40,
              child : TextField(
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(24),
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(128, 203, 201, 1),
              ),
                onPressed: () {
                  Navigator.push(
                    contex,
                    MaterialPageRoute(builder: (contex)=>Menu()),
                  );
                }, 
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  )),

            const SizedBox(height: 25,),

            ElevatedButton.icon(
              icon: Image.asset(
                'assets/images/google.png',
                width: 24,
                height: 24,
                ),
              onPressed: (){
                  _showPopup(contex);
              }, 
              label: const Text(
                'Google',
                style: TextStyle(
                    color: Colors.black,
                  ),
                )),

            const SizedBox(height: 7,),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    contex,
                    MaterialPageRoute(builder: (contex)=>SignUp()),
                  );
                }, 
                child: const Text(
                  'Sign Up Page',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  )),
          ],
        )
      ),
    );
  }
}

//SignUp Page
class SignUp extends StatelessWidget {
  const SignUp({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Sign Up Page', 
        style: TextStyle(
          fontWeight: FontWeight.bold),
        ),
        ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          child: const Text('Already have an account? Login', style: TextStyle(color: Colors.black),)
          ),
      ),
    );
  }
}