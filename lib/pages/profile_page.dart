import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //AppBar
                const SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20.0),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey.shade300,
                      child: const Text(
                        'no profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.camera_alt,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                const Center(
                  child: Text('User Name',
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                const SizedBox(height: 15),

                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        title: const Text('Edit Profile'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Set birthdate'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Change Password'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Change Address'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Log Out'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          Navigator.pushNamed(context, '/login_page');
                        },
                      ),
                      const Divider(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}