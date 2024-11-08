// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Tauficaksa());
// }

// class Tauficaksa extends StatelessWidget {
//   const Tauficaksa({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("bismillha"),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//      MaterialApp(
//       home: Scaffold(
        
//         body: Container(
//           decoration:const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                  Color.fromARGB(255, 26, 2, 80),
//               Color.fromARGB(255, 45, 7, 98)
//               ],),
//           ),
//           child: const Center(
//             child: Text('taufic aksa'),
//           ),
//         ),
//       ),
//     ),
//   );
// }


import 'package:flutter/material.dart';

void main() {
  runApp(ShopSupervisorApp());
}

class ShopSupervisorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopSupervisor',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black, // Black background
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
),
      ),
      home: LoginPage(),
    );
  }
}

// Login Page
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button background color
                  foregroundColor: Colors.white, // Button text color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPage()),
                  );
                },
                child: Text('Login'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green, // Text color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Register Page
class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Register',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button background color
                  foregroundColor: Colors.white, // Button text color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandingPage()),
                  );
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Landing Page
class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopSupervisor'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to ShopSupervisor!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 20),
            Image.network('https://via.placeholder.com/150'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                );
              },
              child: Text('Go to Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}

// Dashboard with Bottom Navigation Bar
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    ItemsPage(),
    WorkersListPage(),
    ProfitLossPage(),
    SalaryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.green,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.black, // Black background for nav bar
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.inventory),
      label: 'Items',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people),
      label: 'Workers',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.pie_chart),
      label: 'Profit/Loss',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.attach_money),
      label: 'Salary',
    ),
  ],
  currentIndex: _selectedIndex,
  selectedItemColor: Colors.green, // Selected item color
  unselectedItemColor: Colors.white70, // Lighter gray for better contrast on black
  onTap: _onItemTapped,
  type: BottomNavigationBarType.fixed, // Ensures all items are visible in black background
),

    );
  }
}

// Individual Pages for Navigation Bar
class ItemsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.inventory, size: 100, color: Colors.green),
          Text('Items Page', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
    );
  }
}

class WorkersListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people, size: 100, color: Colors.green),
          Text('Workers List', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
    );
  }
}

class ProfitLossPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.pie_chart, size: 100, color: Colors.green),
          Text('Profit/Loss Page', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
    );
  }
}

class SalaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.attach_money, size: 100, color: Colors.green),
          Text('Salary Page', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
    );
  }
}
