Create libs->utils->routes.dart->
class MyRoutes {
  static String loginRoute = "/login";
  static String homeRoute = "/home";
}

login button press
 ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                    child: Text("Login"))

