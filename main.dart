
import 'package:flutter/material.dart';

void main() => runApp(CryptoWalletApp());

class CryptoWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet',
      debugShowCheckedModeBanner: false,
      home: WalletHomePage(),
    );
  }
}

class WalletHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0F1C),
      appBar: AppBar(
        title: Text('Overview'),
        backgroundColor: Color(0xFF0B0F1C),
        actions: [Icon(Icons.qr_code), SizedBox(width: 16)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Est. Total Value',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 8),
            Text('7550.02 USDT',
              style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('≈ \$7550.02',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              "Today's PNL +0.00124459 USDT (+5.09%)",
              style: TextStyle(color: Colors.greenAccent),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: ActionButton(title: 'Add Funds')),
                SizedBox(width: 10),
                Expanded(child: ActionButton(title: 'Send')),
                SizedBox(width: 10),
                Expanded(child: ActionButton(title: 'Transfer')),
              ],
            ),
            SizedBox(height: 30),
            Text('Spot', style: TextStyle(color: Colors.white, fontSize: 18)),
            SizedBox(height: 10),
            Text('7550.02 USDT',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF0B0F1C),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'Markets'),
          BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: 'Trade'),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: 'Futures'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Assets'),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String title;
  const ActionButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
      onPressed: () {},
      child: Text(title, style: TextStyle(color: Colors.black)),
    );
  }
}
