import 'package:flutter/material.dart';
import 'package:zyramarket/screens/list_productentry.dart';
import 'package:zyramarket/screens/menu.dart';
import 'package:zyramarket/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            //Bagian drawer header
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade700,
            ),
            child: const Column(
              children: [
                Text(
                  'Zyramarket',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  " 𝙀𝙭𝙥𝙡𝙤𝙧𝙚 𝙕𝙮𝙧𝙖𝙈𝙖𝙧𝙠𝙚𝙩, 𝙬𝙝𝙚𝙧𝙚 𝙚𝙫𝙚𝙧𝙮 𝙛𝙞𝙣𝙙 𝙞𝙨 𝙖 𝙩𝙧𝙚𝙖𝙨𝙪𝙧𝙚 𝙬𝙖𝙞𝙩𝙞𝙣𝙜 𝙛𝙤𝙧 𝙮𝙤𝙪!(っ◔◡◔)っ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  )
                ),
              ],
            ),

          ),
            //Bagian routing
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.store),
              title: const Text('Tambah Product'),
              // Bagian redirection ke ProductEntryFormPage
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductEntryFormPage(),
                ));
              },
            ),

            ListTile(
              leading: const Icon(Icons.add_reaction_rounded),
              title: const Text('Daftar Product'),
              onTap: () {
                  // Route menu ke halaman product
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                  );
              },
          ),

        ],
      ),
    );
  }
}