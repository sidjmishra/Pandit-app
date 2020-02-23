import 'package:flutter/material.dart';
import 'package:pandit_app/screens/home/DrawerMenu.dart';
import 'package:pandit_app/screens/home/Feedback.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PooList extends StatefulWidget {
  @override
  _PooListState createState() => _PooListState();
}

class _PooListState extends State<PooList> {

  void ingre() {
    setState(() {
      Alert(
          context: context,
          title: "Name",
          desc: "Do you want to logout?",
          buttons: [
            DialogButton(
              child: Text(
                "Logout",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
            DialogButton(
              child: Text(
                "Cancel",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
          ]
      ).show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage("images/blog_icon.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MenuPage();
                  },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Pooja List'),
              onTap: () {
                // Update the state of the app.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PooList();
                  },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Feedback'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FeedPage();
                  },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: ingre,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Vishnu Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Vishnu Pooja",
                          desc: "Lord Vishnu is worshipped all over the country at temples and at home. Lord Vishnu is considered very propitious to overcome any problem in life.Lord Vishnu is the preserver of the universe.Through his worship devotees are presumed to be shielded with a protective seam."
                              "\n_____________________________"
                              "\nTo perform Lord Vishnu’s puja, devotees need to arrange all the required materials: \n1.The Idol of the Lord\n2.Oil Lamps\n3.Incense sticks\n4.Fruits\n5.Flowers\n6.Coconut\n7.Betel Nuts\n8.Camphor\n9.Punchamrit\n10.Mango Leaves\n11.Rice\n12.Kumkum\n13.Gangajal\n14.Ghee\n15.Turmeric",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Lakshmi Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Lakshmi Pooja",
                          desc: "Lakshmi Pooja, is a Hindu religious festival that falls on Amavasya of Krishna Paksha in the Vikram Samvat Hindu calendar month of Ashwin, on the third day of Deepawali and is considered as the main festive day of Deepawali."
                              "\n_____________________________"
                              "Following items, which are needed during five days Diwali Puja, should be collected before Diwali. This list doesn't include daily Puja items but it lists only those items which are needed especially for Diwali Puja."
                              "\n_____________________________"
                              "\n1.New Murti (Idols) of Lord Ganesha and Goddess Lakshmi\n2.Bahi-Khata (Account Books)\n3.One red silk cloth for Goddess Lakshmi, One yellow cloth and Inkpot with pen\n4.One red cloth for God's Aasan (seating)\n5.Wooden stool for keeping Murti(s)\n6.Five big earthen Deepak (lamp)\n7.Small earthen Deepak (at least 25)\n8.One fresh earthen Kalash (pitcher)\n9.Flowers and at least three garlands made of fresh flowers\n10.Bilva-leaves and Tulsi-leaves\n11.Naivedhya e.g. sweets, fruits, sugarcane, Lava (parched rice)\n13.Sweet Paan (at least 3)\n14.One pen made of pomegranate or Bilva branch\n15.Duba (दूब) - Durva grass"
                              "\n16.Pancha Pallav(पञ्च पल्लव) - twigs of following five trees"
                              "\n\t-Mango\n\t-Palash\n\t-Banyan\n\t-Peepal\n\t-Bakul\nNote:If some of the items are not available then Akshata can be used in place of missing item as a remedy.",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Vishnu Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Vishnu Pooja",
                          desc: "Lord Vishnu is worshipped all over the country at temples and at home. Lord Vishnu is considered very propitious to overcome any problem in life.Lord Vishnu is the preserver of the universe.Through his worship devotees are presumed to be shielded with a protective seam."
                              "\n_____________________________"
                              "\nTo perform Lord Vishnu’s puja, devotees need to arrange all the required materials: \n1.The Idol of the Lord\n2.Oil Lamps\n3.Incense sticks\n4.Fruits\n5.Flowers\n6.Coconut\n7.Betel Nuts\n8.Camphor\n9.Punchamrit\n10.Mango Leaves\n11.Rice\n12.Kumkum\n13.Gangajal\n14.Ghee\n15.Turmeric",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Lakshmi Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Lakshmi Pooja",
                          desc: "Lakshmi Pooja, is a Hindu religious festival that falls on Amavasya of Krishna Paksha in the Vikram Samvat Hindu calendar month of Ashwin, on the third day of Deepawali and is considered as the main festive day of Deepawali."
                              "\n_____________________________"
                              "Following items, which are needed during five days Diwali Puja, should be collected before Diwali. This list doesn't include daily Puja items but it lists only those items which are needed especially for Diwali Puja."
                              "\n_____________________________"
                              "\n1.New Murti (Idols) of Lord Ganesha and Goddess Lakshmi\n2.Bahi-Khata (Account Books)\n3.One red silk cloth for Goddess Lakshmi, One yellow cloth and Inkpot with pen\n4.One red cloth for God's Aasan (seating)\n5.Wooden stool for keeping Murti(s)\n6.Five big earthen Deepak (lamp)\n7.Small earthen Deepak (at least 25)\n8.One fresh earthen Kalash (pitcher)\n9.Flowers and at least three garlands made of fresh flowers\n10.Bilva-leaves and Tulsi-leaves\n11.Naivedhya e.g. sweets, fruits, sugarcane, Lava (parched rice)\n13.Sweet Paan (at least 3)\n14.One pen made of pomegranate or Bilva branch\n15.Duba (दूब) - Durva grass"
                              "\n16.Pancha Pallav(पञ्च पल्लव) - twigs of following five trees"
                              "\n\t-Mango\n\t-Palash\n\t-Banyan\n\t-Peepal\n\t-Bakul\nNote:If some of the items are not available then Akshata can be used in place of missing item as a remedy.",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Vishnu Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Vishnu Pooja",
                          desc: "Lord Vishnu is worshipped all over the country at temples and at home. Lord Vishnu is considered very propitious to overcome any problem in life.Lord Vishnu is the preserver of the universe.Through his worship devotees are presumed to be shielded with a protective seam."
                              "\n_____________________________"
                              "\nTo perform Lord Vishnu’s puja, devotees need to arrange all the required materials: \n1.The Idol of the Lord\n2.Oil Lamps\n3.Incense sticks\n4.Fruits\n5.Flowers\n6.Coconut\n7.Betel Nuts\n8.Camphor\n9.Punchamrit\n10.Mango Leaves\n11.Rice\n12.Kumkum\n13.Gangajal\n14.Ghee\n15.Turmeric",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Lakshmi Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Lakshmi Pooja",
                          desc: "Lakshmi Pooja, is a Hindu religious festival that falls on Amavasya of Krishna Paksha in the Vikram Samvat Hindu calendar month of Ashwin, on the third day of Deepawali and is considered as the main festive day of Deepawali."
                              "\n_____________________________"
                              "Following items, which are needed during five days Diwali Puja, should be collected before Diwali. This list doesn't include daily Puja items but it lists only those items which are needed especially for Diwali Puja."
                              "\n_____________________________"
                              "\n1.New Murti (Idols) of Lord Ganesha and Goddess Lakshmi\n2.Bahi-Khata (Account Books)\n3.One red silk cloth for Goddess Lakshmi, One yellow cloth and Inkpot with pen\n4.One red cloth for God's Aasan (seating)\n5.Wooden stool for keeping Murti(s)\n6.Five big earthen Deepak (lamp)\n7.Small earthen Deepak (at least 25)\n8.One fresh earthen Kalash (pitcher)\n9.Flowers and at least three garlands made of fresh flowers\n10.Bilva-leaves and Tulsi-leaves\n11.Naivedhya e.g. sweets, fruits, sugarcane, Lava (parched rice)\n13.Sweet Paan (at least 3)\n14.One pen made of pomegranate or Bilva branch\n15.Duba (दूब) - Durva grass"
                              "\n16.Pancha Pallav(पञ्च पल्लव) - twigs of following five trees"
                              "\n\t-Mango\n\t-Palash\n\t-Banyan\n\t-Peepal\n\t-Bakul\nNote:If some of the items are not available then Akshata can be used in place of missing item as a remedy.",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Vishnu Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Vishnu Pooja",
                          desc: "Lord Vishnu is worshipped all over the country at temples and at home. Lord Vishnu is considered very propitious to overcome any problem in life.Lord Vishnu is the preserver of the universe.Through his worship devotees are presumed to be shielded with a protective seam."
                              "\n_____________________________"
                              "\nTo perform Lord Vishnu’s puja, devotees need to arrange all the required materials: \n1.The Idol of the Lord\n2.Oil Lamps\n3.Incense sticks\n4.Fruits\n5.Flowers\n6.Coconut\n7.Betel Nuts\n8.Camphor\n9.Punchamrit\n10.Mango Leaves\n11.Rice\n12.Kumkum\n13.Gangajal\n14.Ghee\n15.Turmeric",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Lakshmi Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Lakshmi Pooja",
                          desc: "Lakshmi Pooja, is a Hindu religious festival that falls on Amavasya of Krishna Paksha in the Vikram Samvat Hindu calendar month of Ashwin, on the third day of Deepawali and is considered as the main festive day of Deepawali."
                              "\n_____________________________"
                              "Following items, which are needed during five days Diwali Puja, should be collected before Diwali. This list doesn't include daily Puja items but it lists only those items which are needed especially for Diwali Puja."
                              "\n_____________________________"
                              "\n1.New Murti (Idols) of Lord Ganesha and Goddess Lakshmi\n2.Bahi-Khata (Account Books)\n3.One red silk cloth for Goddess Lakshmi, One yellow cloth and Inkpot with pen\n4.One red cloth for God's Aasan (seating)\n5.Wooden stool for keeping Murti(s)\n6.Five big earthen Deepak (lamp)\n7.Small earthen Deepak (at least 25)\n8.One fresh earthen Kalash (pitcher)\n9.Flowers and at least three garlands made of fresh flowers\n10.Bilva-leaves and Tulsi-leaves\n11.Naivedhya e.g. sweets, fruits, sugarcane, Lava (parched rice)\n13.Sweet Paan (at least 3)\n14.One pen made of pomegranate or Bilva branch\n15.Duba (दूब) - Durva grass"
                              "\n16.Pancha Pallav(पञ्च पल्लव) - twigs of following five trees"
                              "\n\t-Mango\n\t-Palash\n\t-Banyan\n\t-Peepal\n\t-Bakul\nNote:If some of the items are not available then Akshata can be used in place of missing item as a remedy.",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Vishnu Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Vishnu Pooja",
                          desc: "Lord Vishnu is worshipped all over the country at temples and at home. Lord Vishnu is considered very propitious to overcome any problem in life.Lord Vishnu is the preserver of the universe.Through his worship devotees are presumed to be shielded with a protective seam."
                              "\n_____________________________"
                              "\nTo perform Lord Vishnu’s puja, devotees need to arrange all the required materials: \n1.The Idol of the Lord\n2.Oil Lamps\n3.Incense sticks\n4.Fruits\n5.Flowers\n6.Coconut\n7.Betel Nuts\n8.Camphor\n9.Punchamrit\n10.Mango Leaves\n11.Rice\n12.Kumkum\n13.Gangajal\n14.Ghee\n15.Turmeric",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Lakshmi Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Lakshmi Pooja",
                          desc: "Lakshmi Pooja, is a Hindu religious festival that falls on Amavasya of Krishna Paksha in the Vikram Samvat Hindu calendar month of Ashwin, on the third day of Deepawali and is considered as the main festive day of Deepawali."
                              "\n_____________________________"
                              "Following items, which are needed during five days Diwali Puja, should be collected before Diwali. This list doesn't include daily Puja items but it lists only those items which are needed especially for Diwali Puja."
                              "\n_____________________________"
                              "\n1.New Murti (Idols) of Lord Ganesha and Goddess Lakshmi\n2.Bahi-Khata (Account Books)\n3.One red silk cloth for Goddess Lakshmi, One yellow cloth and Inkpot with pen\n4.One red cloth for God's Aasan (seating)\n5.Wooden stool for keeping Murti(s)\n6.Five big earthen Deepak (lamp)\n7.Small earthen Deepak (at least 25)\n8.One fresh earthen Kalash (pitcher)\n9.Flowers and at least three garlands made of fresh flowers\n10.Bilva-leaves and Tulsi-leaves\n11.Naivedhya e.g. sweets, fruits, sugarcane, Lava (parched rice)\n13.Sweet Paan (at least 3)\n14.One pen made of pomegranate or Bilva branch\n15.Duba (दूब) - Durva grass"
                              "\n16.Pancha Pallav(पञ्च पल्लव) - twigs of following five trees"
                              "\n\t-Mango\n\t-Palash\n\t-Banyan\n\t-Peepal\n\t-Bakul\nNote:If some of the items are not available then Akshata can be used in place of missing item as a remedy.",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Vishnu Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Vishnu Pooja",
                          desc: "Lord Vishnu is worshipped all over the country at temples and at home. Lord Vishnu is considered very propitious to overcome any problem in life.Lord Vishnu is the preserver of the universe.Through his worship devotees are presumed to be shielded with a protective seam."
                              "\n_____________________________"
                              "\nTo perform Lord Vishnu’s puja, devotees need to arrange all the required materials: \n1.The Idol of the Lord\n2.Oil Lamps\n3.Incense sticks\n4.Fruits\n5.Flowers\n6.Coconut\n7.Betel Nuts\n8.Camphor\n9.Punchamrit\n10.Mango Leaves\n11.Rice\n12.Kumkum\n13.Gangajal\n14.Ghee\n15.Turmeric",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
              Card(
                color: Colors.orange[200],
                child: FlatButton(
                  child: Text("Lakshmi Pooja"),
                  onPressed: () {
                    setState(() {
                      Alert(
                          context: context,
                          title: "Lakshmi Pooja",
                          desc: "Lakshmi Pooja, is a Hindu religious festival that falls on Amavasya of Krishna Paksha in the Vikram Samvat Hindu calendar month of Ashwin, on the third day of Deepawali and is considered as the main festive day of Deepawali."
                              "\n_____________________________"
                              "Following items, which are needed during five days Diwali Puja, should be collected before Diwali. This list doesn't include daily Puja items but it lists only those items which are needed especially for Diwali Puja."
                              "\n_____________________________"
                              "\n1.New Murti (Idols) of Lord Ganesha and Goddess Lakshmi\n2.Bahi-Khata (Account Books)\n3.One red silk cloth for Goddess Lakshmi, One yellow cloth and Inkpot with pen\n4.One red cloth for God's Aasan (seating)\n5.Wooden stool for keeping Murti(s)\n6.Five big earthen Deepak (lamp)\n7.Small earthen Deepak (at least 25)\n8.One fresh earthen Kalash (pitcher)\n9.Flowers and at least three garlands made of fresh flowers\n10.Bilva-leaves and Tulsi-leaves\n11.Naivedhya e.g. sweets, fruits, sugarcane, Lava (parched rice)\n13.Sweet Paan (at least 3)\n14.One pen made of pomegranate or Bilva branch\n15.Duba (दूब) - Durva grass"
                              "\n16.Pancha Pallav(पञ्च पल्लव) - twigs of following five trees"
                              "\n\t-Mango\n\t-Palash\n\t-Banyan\n\t-Peepal\n\t-Bakul\nNote:If some of the items are not available then Akshata can be used in place of missing item as a remedy.",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "Okay",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            ),
                          ]
                      ).show();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}