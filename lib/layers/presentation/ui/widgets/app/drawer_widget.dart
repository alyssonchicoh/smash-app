import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smash/layers/presentation/provider/user_provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext c) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Consumer<UserProvider>(
            builder: (context, userProvider, child) {
              return UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amber[300]),
                accountEmail: Text(
                  userProvider.userLogged.type,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
                accountName: Text(
                  userProvider.userLogged.nome,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[700],
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                    userProvider.userLogged.urlImage,
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              size: 30,
              color: Colors.amber[700],
            ),
            title: Text(
              "Minhas Reservas",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            onTap: () {
              c.push("/reservations");
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app_sharp,
              size: 30,
              color: Colors.amber[700],
            ),
            title: Text(
              "Sair do App",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
            onTap: () {
              Navigator.pop(c);
              //Navegar para outra página
            },
          ),
        ],
      ),
    );
  }
}
