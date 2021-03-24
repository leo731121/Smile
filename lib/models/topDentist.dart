class TopDentist {
  final String imgPath;
  final String name, doctortype, location;
  final rating;

  TopDentist({
    this.imgPath,
    this.name,
    this.doctortype,
    this.location,
    this.rating,
  });
}

List<TopDentist> topDoctors = [
  TopDentist(
    imgPath: 'assets/images/welcome13.jpg',
    name: 'Erick Su',
    doctortype: 'Ortho Dentist',
    location: 'Banglore,Karnatka',
    rating: '4.6',
  ),
  TopDentist(
    imgPath: 'assets/images/welcome13.jpg',
    name: 'Eric Su',
    doctortype: 'Ortho Dentist',
    location: 'Banglore,Karnatka',
    rating: '4.6',
  ),
  TopDentist(
    imgPath: 'assets/images/welcome13.jpg',
    name: 'Eric Su',
    doctortype: 'Ortho Dentist',
    location: 'Banglore,Karnatka',
    rating: '4.6',
  ),
];
