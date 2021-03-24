class Dentist {
  final String imgPath;
  final String name, doctortype, location;
  final rating;
  final String price;
  final Function press;

  Dentist(
      {this.press,
      this.imgPath,
      this.name,
      this.doctortype,
      this.location,
      this.rating,
      this.price});
}

List<Dentist> dentist = [
  Dentist(
    imgPath: 'assets/images/welcome13.jpg',
    name: 'Erick Su',
    doctortype: 'Ortho Dentist',
    location: 'Banglore,Karnatka',
    rating: '4.6',
    price: '\$500',
    press: () {},
  ),
  Dentist(
      imgPath: 'assets/images/welcome13.jpg',
      name: 'Usama',
      doctortype: 'Ortho Dentist',
      location: 'Banglore,Karnatka',
      rating: '4.6',
      price: '\$500',
      press: () {}),
  Dentist(
      imgPath: 'assets/images/welcome13.jpg',
      name: 'Reyan',
      doctortype: 'Ortho Dentist',
      location: 'Banglore,Karnatka',
      rating: '4.6',
      price: '\$500',
      press: () {}),
  Dentist(
      imgPath: 'assets/images/welcome13.jpg',
      name: 'Ahmed',
      doctortype: 'Ortho Dentist',
      location: 'Banglore,Karnatka',
      rating: '4.6',
      price: '\$500',
      press: () {}),
  Dentist(
      imgPath: 'assets/images/welcome13.jpg',
      name: 'Sharoz',
      doctortype: 'Ortho Dentist',
      location: 'Banglore,Karnatka',
      rating: '4.6',
      price: '\$500',
      press: () {}),
  Dentist(
      imgPath: 'assets/images/welcome13.jpg',
      name: 'Ahmed2',
      doctortype: 'Ortho Dentist',
      location: 'Banglore,Karnatka',
      rating: '4.6',
      price: '\$500',
      press: () {}),
];
