//
//  CountriesViewController.swift
//  TakeMeTo
//
//  Created by Michael K on 1/15/16.
//  Copyright © 2016 Michael Kohl. All rights reserved.
//

import UIKit

class CountriesViewController: UIViewController {
  
  let countries: [String:[Country]] = [
    "A": [
      Country(name: "Afghanistan", latitude: 33.93911, longitude: 67.709953),
      Country(name: "Albania", latitude: 41.153332, longitude: 20.168331),
      Country(name: "Algeria", latitude: 28.033886, longitude: 1.659626),
      Country(name: "American Samoa", latitude: -14.270972, longitude: -170.132217),
      Country(name: "Andorra", latitude: 42.546245, longitude: 1.601554),
      Country(name: "Angola", latitude: -11.202692, longitude: 17.873887),
      Country(name: "Anguilla", latitude: 18.220554, longitude: -63.068615),
      Country(name: "Antarctica", latitude: -75.250973, longitude: -0.071389),
      Country(name: "Antigua and Barbuda", latitude: 17.060816, longitude: -61.796428),
      Country(name: "Argentina", latitude: -38.416097, longitude: -63.616672),
      Country(name: "Armenia", latitude: 40.069099, longitude: 45.038189),
      Country(name: "Aruba", latitude: 12.52111, longitude: -69.968338),
      Country(name: "Australia", latitude: -25.274398, longitude: 133.775136),
      Country(name: "Austria", latitude: 47.516231, longitude: 14.550072),
      Country(name: "Azerbaijan", latitude: 40.143105, longitude: 47.576927)
    ],
    "B": [
      Country(name: "Bahamas", latitude: 25.03428, longitude: -77.39628),
      Country(name: "Bahrain", latitude: 25.930414, longitude: 50.637772),
      Country(name: "Bangladesh", latitude: 23.684994, longitude: 90.356331),
      Country(name: "Barbados", latitude: 13.193887, longitude: -59.543198),
      Country(name: "Belarus", latitude: 53.709807, longitude: 27.953389),
      Country(name: "Belgium", latitude: 50.503887, longitude: 4.469936),
      Country(name: "Belize", latitude: 17.189877, longitude: -88.49765),
      Country(name: "Benin", latitude: 9.30769, longitude: 2.315834),
      Country(name: "Bermuda", latitude: 32.321384, longitude: -64.75737),
      Country(name: "Bhutan", latitude: 27.514162, longitude: 90.433601),
      Country(name: "Bolivia", latitude: -16.290154, longitude: -63.588653),
      Country(name: "Bosnia and Herzegovina", latitude: 43.915886, longitude: 17.679076),
      Country(name: "Botswana", latitude: -22.328474, longitude: 24.684866),
      Country(name: "Bouvet Island", latitude: -54.423199, longitude: 3.413194),
      Country(name: "Brazil", latitude: -14.235004, longitude: -51.92528),
      Country(name: "British Indian Ocean Territory", latitude: -6.343194, longitude: 71.876519),
      Country(name: "British Virgin Islands", latitude: 18.420695, longitude: -64.639968),
      Country(name: "Brunei", latitude: 4.535277, longitude: 114.727669),
      Country(name: "Bulgaria", latitude: 42.733883, longitude: 25.48583),
      Country(name: "Burkina Faso", latitude: 12.238333, longitude: -1.561593),
      Country(name: "Burundi", latitude: -3.373056, longitude: 29.918886)
    ],
    "C": [
      Country(name: "Cambodia", latitude: 12.565679, longitude: 104.990963),
      Country(name: "Cameroon", latitude: 7.369722, longitude: 12.354722),
      Country(name: "Canada", latitude: 56.130366, longitude: -106.346771),
      Country(name: "Cape Verde", latitude: 16.002082, longitude: -24.013197),
      Country(name: "Cayman Islands", latitude: 19.513469, longitude: -80.566956),
      Country(name: "Central African Republic", latitude: 6.611111, longitude: 20.939444),
      Country(name: "Chad", latitude: 15.454166, longitude: 18.732207),
      Country(name: "Chile", latitude: -35.675147, longitude: -71.542969),
      Country(name: "China", latitude: 35.86166, longitude: 104.195397),
      Country(name: "Christmas Island", latitude: -10.447525, longitude: 105.690449),
      Country(name: "Cocos [Keeling] Islands", latitude: -12.164165, longitude: 96.870956),
      Country(name: "Colombia", latitude: 4.570868, longitude: -74.297333),
      Country(name: "Comoros", latitude: -11.875001, longitude: 43.872219),
      Country(name: "Congo [DRC]", latitude: -4.038333, longitude: 21.758664),
      Country(name: "Congo [Republic]", latitude: -0.228021, longitude: 15.827659),
      Country(name: "Cook Islands", latitude: -21.236736, longitude: -159.777671),
      Country(name: "Costa Rica", latitude: 9.748917, longitude: -83.753428),
      Country(name: "Croatia", latitude: 45.1, longitude: 15.2),
      Country(name: "Cuba", latitude: 21.521757, longitude: -77.781167),
      Country(name: "Cyprus", latitude: 35.126413, longitude: 33.429859),
      Country(name: "Czech Republic", latitude: 49.817492, longitude: 15.472962),
      Country(name: "Côte d'Ivoire", latitude: 7.539989, longitude: -5.54708)
    ],
    "D": [
      Country(name: "Denmark", latitude: 56.26392, longitude: 9.501785),
      Country(name: "Djibouti", latitude: 11.825138, longitude: 42.590275),
      Country(name: "Dominica", latitude: 15.414999, longitude: -61.370976),
      Country(name: "Dominican Republic", latitude: 18.735693, longitude: -70.162651)
    ],
    "E": [
      Country(name: "Ecuador", latitude: -1.831239, longitude: -78.183406),
      Country(name: "Egypt", latitude: 26.820553, longitude: 30.802498),
      Country(name: "El Salvador", latitude: 13.794185, longitude: -88.89653),
      Country(name: "Equatorial Guinea", latitude: 1.650801, longitude: 10.267895),
      Country(name: "Eritrea", latitude: 15.179384, longitude: 39.782334),
      Country(name: "Estonia", latitude: 58.595272, longitude: 25.013607),
      Country(name: "Ethiopia", latitude: 9.145, longitude: 40.489673)
    ],
    "F": [
      Country(name: "Falkland Islands [Islas Malvinas]", latitude: -51.796253, longitude: -59.523613),
      Country(name: "Faroe Islands", latitude: 61.892635, longitude: -6.911806),
      Country(name: "Fiji", latitude: -16.578193, longitude: 179.414413),
      Country(name: "Finland", latitude: 61.92411, longitude: 25.748151),
      Country(name: "France", latitude: 46.227638, longitude: 2.213749),
      Country(name: "French Guiana", latitude: 3.933889, longitude: -53.125782),
      Country(name: "French Polynesia", latitude: -17.679742, longitude: -149.406843),
      Country(name: "French Southern Territories", latitude: -49.280366, longitude: 69.348557)
    ],
    "G": [
      Country(name: "Gabon", latitude: -0.803689, longitude: 11.609444),
      Country(name: "Gambia", latitude: 13.443182, longitude: -15.310139),
      Country(name: "Gaza Strip", latitude: 31.354676, longitude: 34.308825),
      Country(name: "Georgia", latitude: 42.315407, longitude: 43.356892),
      Country(name: "Germany", latitude: 51.165691, longitude: 10.451526),
      Country(name: "Ghana", latitude: 7.946527, longitude: -1.023194),
      Country(name: "Gibraltar", latitude: 36.137741, longitude: -5.345374),
      Country(name: "Greece", latitude: 39.074208, longitude: 21.824312),
      Country(name: "Greenland", latitude: 71.706936, longitude: -42.604303),
      Country(name: "Grenada", latitude: 12.262776, longitude: -61.604171),
      Country(name: "Guadeloupe", latitude: 16.995971, longitude: -62.067641),
      Country(name: "Guam", latitude: 13.444304, longitude: 144.793731),
      Country(name: "Guatemala", latitude: 15.783471, longitude: -90.230759),
      Country(name: "Guernsey", latitude: 49.465691, longitude: -2.585278),
      Country(name: "Guinea", latitude: 9.945587, longitude: -9.696645),
      Country(name: "Guinea-Bissau", latitude: 11.803749, longitude: -15.180413),
      Country(name: "Guyana", latitude: 4.860416, longitude: -58.93018)
    ],
    "H": [
      Country(name: "Haiti", latitude: 18.971187, longitude: -72.285215),
      Country(name: "Heard Island and McDonald Islands", latitude: -53.08181, longitude: 73.504158),
      Country(name: "Honduras", latitude: 15.199999, longitude: -86.241905),
      Country(name: "Hong Kong", latitude: 22.396428, longitude: 114.109497),
      Country(name: "Hungary", latitude: 47.162494, longitude: 19.503304)
    ],
    "I": [
      Country(name: "Iceland", latitude: 64.963051, longitude: -19.020835),
      Country(name: "India", latitude: 20.593684, longitude: 78.96288),
      Country(name: "Indonesia", latitude: -0.789275, longitude: 113.921327),
      Country(name: "Iran", latitude: 32.427908, longitude: 53.688046),
      Country(name: "Iraq", latitude: 33.223191, longitude: 43.679291),
      Country(name: "Ireland", latitude: 53.41291, longitude: -8.24389),
      Country(name: "Isle of Man", latitude: 54.236107, longitude: -4.548056),
      Country(name: "Israel", latitude: 31.046051, longitude: 34.851612),
      Country(name: "Italy", latitude: 41.87194, longitude: 12.56738)
    ],
    "J": [
      Country(name: "Jamaica", latitude: 18.109581, longitude: -77.297508),
      Country(name: "Japan", latitude: 36.204824, longitude: 138.252924),
      Country(name: "Jersey", latitude: 49.214439, longitude: -2.13125),
      Country(name: "Jordan", latitude: 30.585164, longitude: 36.238414)
    ],
    "K": [
      Country(name: "Kazakhstan", latitude: 48.019573, longitude: 66.923684),
      Country(name: "Kenya", latitude: -0.023559, longitude: 37.906193),
      Country(name: "Kiribati", latitude: -3.370417, longitude: -168.734039),
      Country(name: "Kosovo", latitude: 42.602636, longitude: 20.902977),
      Country(name: "Kuwait", latitude: 29.31166, longitude: 47.481766),
      Country(name: "Kyrgyzstan", latitude: 41.20438, longitude: 74.766098)
    ],
    "L": [
      Country(name: "Laos", latitude: 19.85627, longitude: 102.495496),
      Country(name: "Latvia", latitude: 56.879635, longitude: 24.603189),
      Country(name: "Lebanon", latitude: 33.854721, longitude: 35.862285),
      Country(name: "Lesotho", latitude: -29.609988, longitude: 28.233608),
      Country(name: "Liberia", latitude: 6.428055, longitude: -9.429499),
      Country(name: "Libya", latitude: 26.3351, longitude: 17.228331),
      Country(name: "Liechtenstein", latitude: 47.166, longitude: 9.555373),
      Country(name: "Lithuania", latitude: 55.169438, longitude: 23.881275),
      Country(name: "Luxembourg", latitude: 49.815273, longitude: 6.129583)
    ],
    "M": [
      Country(name: "Macau", latitude: 22.198745, longitude: 113.543873),
      Country(name: "Macedonia [FYROM]", latitude: 41.608635, longitude: 21.745275),
      Country(name: "Madagascar", latitude: -18.766947, longitude: 46.869107),
      Country(name: "Malawi", latitude: -13.254308, longitude: 34.301525),
      Country(name: "Malaysia", latitude: 4.210484, longitude: 101.975766),
      Country(name: "Maldives", latitude: 3.202778, longitude: 73.22068),
      Country(name: "Mali", latitude: 17.570692, longitude: -3.996166),
      Country(name: "Malta", latitude: 35.937496, longitude: 14.375416),
      Country(name: "Marshall Islands", latitude: 7.131474, longitude: 171.184478),
      Country(name: "Martinique", latitude: 14.641528, longitude: -61.024174),
      Country(name: "Mauritania", latitude: 21.00789, longitude: -10.940835),
      Country(name: "Mauritius", latitude: -20.348404, longitude: 57.552152),
      Country(name: "Mayotte", latitude: -12.8275, longitude: 45.166244),
      Country(name: "Mexico", latitude: 23.634501, longitude: -102.552784),
      Country(name: "Micronesia", latitude: 7.425554, longitude: 150.550812),
      Country(name: "Moldova", latitude: 47.411631, longitude: 28.369885),
      Country(name: "Monaco", latitude: 43.750298, longitude: 7.412841),
      Country(name: "Mongolia", latitude: 46.862496, longitude: 103.846656),
      Country(name: "Montenegro", latitude: 42.708678, longitude: 19.37439),
      Country(name: "Montserrat", latitude: 16.742498, longitude: -62.187366),
      Country(name: "Morocco", latitude: 31.791702, longitude: -7.09262),
      Country(name: "Mozambique", latitude: -18.665695, longitude: 35.529562),
      Country(name: "Myanmar [Burma]", latitude: 21.913965, longitude: 95.956223)
    ],
    "N": [
      Country(name: "Namibia", latitude: -22.95764, longitude: 18.49041),
      Country(name: "Nauru", latitude: -0.522778, longitude: 166.931503),
      Country(name: "Nepal", latitude: 28.394857, longitude: 84.124008),
      Country(name: "Netherlands", latitude: 52.132633, longitude: 5.291266),
      Country(name: "Netherlands Antilles", latitude: 12.226079, longitude: -69.060087),
      Country(name: "New Caledonia", latitude: -20.904305, longitude: 165.618042),
      Country(name: "New Zealand", latitude: -40.900557, longitude: 174.885971),
      Country(name: "Nicaragua", latitude: 12.865416, longitude: -85.207229),
      Country(name: "Niger", latitude: 17.607789, longitude: 8.081666),
      Country(name: "Nigeria", latitude: 9.081999, longitude: 8.675277),
      Country(name: "Niue", latitude: -19.054445, longitude: -169.867233),
      Country(name: "Norfolk Island", latitude: -29.040835, longitude: 167.954712),
      Country(name: "North Korea", latitude: 40.339852, longitude: 127.510093),
      Country(name: "Northern Mariana Islands", latitude: 17.33083, longitude: 145.38469),
      Country(name: "Norway", latitude: 60.472024, longitude: 8.468946)
    ],
    "O": [
      Country(name: "Oman", latitude: 21.512583, longitude: 55.923255)
    ],
    "P": [
      Country(name: "Pakistan", latitude: 30.375321, longitude: 69.345116),
      Country(name: "Palau", latitude: 7.51498, longitude: 134.58252),
      Country(name: "Palestinian Territories", latitude: 31.952162, longitude: 35.233154),
      Country(name: "Panama", latitude: 8.537981, longitude: -80.782127),
      Country(name: "Papua New Guinea", latitude: -6.314993, longitude: 143.95555),
      Country(name: "Paraguay", latitude: -23.442503, longitude: -58.443832),
      Country(name: "Peru", latitude: -9.189967, longitude: -75.015152),
      Country(name: "Philippines", latitude: 12.879721, longitude: 121.774017),
      Country(name: "Pitcairn Islands", latitude: -24.703615, longitude: -127.439308),
      Country(name: "Poland", latitude: 51.919438, longitude: 19.145136),
      Country(name: "Portugal", latitude: 39.399872, longitude: -8.224454),
      Country(name: "Puerto Rico", latitude: 18.220833, longitude: -66.590149)
    ],
    "Q": [
      Country(name: "Qatar", latitude: 25.354826, longitude: 51.183884)
    ],
    "R": [
      Country(name: "Romania", latitude: 45.943161, longitude: 24.96676),
      Country(name: "Russia", latitude: 61.52401, longitude: 105.318756),
      Country(name: "Rwanda", latitude: -1.940278, longitude: 29.873888),
      Country(name: "Réunion", latitude: -21.115141, longitude: 55.536384)
    ],
    "S": [
      Country(name: "Saint Helena", latitude: -24.143474, longitude: -10.030696),
      Country(name: "Saint Kitts and Nevis", latitude: 17.357822, longitude: -62.782998),
      Country(name: "Saint Lucia", latitude: 13.909444, longitude: -60.978893),
      Country(name: "Saint Pierre and Miquelon", latitude: 46.941936, longitude: -56.27111),
      Country(name: "Saint Vincent and the Grenadines", latitude: 12.984305, longitude: -61.287228),
      Country(name: "Samoa", latitude: -13.759029, longitude: -172.104629),
      Country(name: "San Marino", latitude: 43.94236, longitude: 12.457777),
      Country(name: "Saudi Arabia", latitude: 23.885942, longitude: 45.079162),
      Country(name: "Senegal", latitude: 14.497401, longitude: -14.452362),
      Country(name: "Serbia", latitude: 44.016521, longitude: 21.005859),
      Country(name: "Seychelles", latitude: -4.679574, longitude: 55.491977),
      Country(name: "Sierra Leone", latitude: 8.460555, longitude: -11.779889),
      Country(name: "Singapore", latitude: 1.352083, longitude: 103.819836),
      Country(name: "Slovakia", latitude: 48.669026, longitude: 19.699024),
      Country(name: "Slovenia", latitude: 46.151241, longitude: 14.995463),
      Country(name: "Solomon Islands", latitude: -9.64571, longitude: 160.156194),
      Country(name: "Somalia", latitude: 5.152149, longitude: 46.199616),
      Country(name: "South Africa", latitude: -30.559482, longitude: 22.937506),
      Country(name: "South Georgia and the South Sandwich Islands", latitude: -54.429579, longitude: -36.587909),
      Country(name: "South Korea", latitude: 35.907757, longitude: 127.766922),
      Country(name: "South Sudan", latitude: 14.862807, longitude: 30.217636),
      Country(name: "Spain", latitude: 40.463667, longitude: -3.74922),
      Country(name: "Sri Lanka", latitude: 7.873054, longitude: 80.771797),
      Country(name: "Sudan", latitude: 12.862807, longitude: 30.217636),
      Country(name: "Suriname", latitude: 3.919305, longitude: -56.027783),
      Country(name: "Svalbard and Jan Mayen", latitude: 77.553604, longitude: 23.670272),
      Country(name: "Swaziland", latitude: -26.522503, longitude: 31.465866),
      Country(name: "Sweden", latitude: 60.128161, longitude: 18.643501),
      Country(name: "Switzerland", latitude: 46.818188, longitude: 8.227512),
      Country(name: "Syria", latitude: 34.802075, longitude: 38.996815),
      Country(name: "São Tomé and Príncipe", latitude: 0.18636, longitude: 6.613081)
    ],
    "T": [
      Country(name: "Taiwan", latitude: 23.69781, longitude: 120.960515),
      Country(name: "Tajikistan", latitude: 38.861034, longitude: 71.276093),
      Country(name: "Tanzania", latitude: -6.369028, longitude: 34.888822),
      Country(name: "Thailand", latitude: 15.870032, longitude: 100.992541),
      Country(name: "Timor-Leste", latitude: -8.874217, longitude: 125.727539),
      Country(name: "Togo", latitude: 8.619543, longitude: 0.824782),
      Country(name: "Tokelau", latitude: -8.967363, longitude: -171.855881),
      Country(name: "Tonga", latitude: -21.178986, longitude: -175.198242),
      Country(name: "Trinidad and Tobago", latitude: 10.691803, longitude: -61.222503),
      Country(name: "Tunisia", latitude: 33.886917, longitude: 9.537499),
      Country(name: "Turkey", latitude: 38.963745, longitude: 35.243322),
      Country(name: "Turkmenistan", latitude: 38.969719, longitude: 59.556278),
      Country(name: "Turks and Caicos Islands", latitude: 21.694025, longitude: -71.797928),
      Country(name: "Tuvalu", latitude: -7.109535, longitude: 177.64933)
    ],
    "U": [
      Country(name: "U.S. Virgin Islands", latitude: 18.335765, longitude: -64.896335),
      Country(name: "Uganda", latitude: 1.373333, longitude: 32.290275),
      Country(name: "Ukraine", latitude: 48.379433, longitude: 31.16558),
      Country(name: "United Arab Emirates", latitude: 23.424076, longitude: 53.847818),
      Country(name: "United Kingdom", latitude: 55.378051, longitude: -3.435973),
      Country(name: "United States", latitude: 37.09024, longitude: -95.712891),
      Country(name: "Uruguay", latitude: -32.522779, longitude: -55.765835),
      Country(name: "Uzbekistan", latitude: 41.377491, longitude: 64.585262)
    ],
    "V": [
      Country(name: "Vanuatu", latitude: -15.376706, longitude: 166.959158),
      Country(name: "Vatican City", latitude: 41.902916, longitude: 12.453389),
      Country(name: "Venezuela", latitude: 6.42375, longitude: -66.58973),
      Country(name: "Vietnam", latitude: 14.058324, longitude: 108.277199)
    ],
    "W": [
      Country(name: "Wallis and Futuna", latitude: -13.768752, longitude: -177.156097),
      Country(name: "Western Sahara", latitude: 24.215527, longitude: -12.885834)
    ],
    "Y": [
      Country(name: "Yemen", latitude: 15.552727, longitude: 48.516388)
    ],
    "Z": [
      Country(name: "Zambia", latitude: -13.133897, longitude: 27.849332),
      Country(name: "Zimbabwe", latitude: -19.015438, longitude: 29.154857)
    ]
  ]
  
  var countryKeys: [String] {
    return Array(countries.keys).sort()
  }
  
  var filteredCountries = [Country]()
  
  @IBOutlet weak var tableView: UITableView!
  let searchController = UISearchController(searchResultsController: nil)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.searchController.loadViewIfNeeded() // get rid of dealloc warning
    searchControllerSetup()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  private func searchControllerSetup() {
    searchController.searchResultsUpdater = self
    searchController.dimsBackgroundDuringPresentation = false
    definesPresentationContext = true
    tableView.tableHeaderView = searchController.searchBar
  }
}

extension CountriesViewController {
  // MARK: Filtering
  func filterContentForSearchText(searchText: String) {
    filteredCountries = []
    
    for values in countries.values {
      let filtered = values.filter { country in
        country.name.lowercaseString.containsString(searchText.lowercaseString)
      }
      filteredCountries.appendContentsOf(filtered)
    }
    filteredCountries.sortInPlace { $0.name < $1.name }
    tableView.reloadData()
  }
  
  func isSearch() -> Bool {
    return searchController.active && searchController.searchBar.text != ""
  }
}

extension CountriesViewController: UISearchResultsUpdating {
  // MARK: UISearchResultsUpdating
  func updateSearchResultsForSearchController(searchController: UISearchController) {
    filterContentForSearchText(searchController.searchBar.text!)
  }
}


extension CountriesViewController: UITableViewDataSource {
  // MARK: UITableViewDataSource
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    if searchController.active && searchController.searchBar.text != "" {
      return 1
    } else {
      return countryKeys.count
    }
  }
  
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    if isSearch() {
      return nil
    } else {
      return countryKeys[section]
    }
  }
  
  func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
    if(index == 0) {
      tableView.scrollRectToVisible((tableView.tableHeaderView?.frame)!, animated: false)
    }
    return index-1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if isSearch() {
      return filteredCountries.count
    } else {
      let key = countryKeys[section]
      return countries[key]?.count ?? 0
    }
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    let key = countryKeys[indexPath.section]
    let country: Country
    if isSearch() {
      country = filteredCountries[indexPath.row]
    } else {
      country = countries[key]![indexPath.row]
    }
    cell.textLabel!.text = country.name
    return cell
  }
  
  func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
    return [UITableViewIndexSearch] + countryKeys
  }
}

extension CountriesViewController: UITableViewDelegate {
  // MARK: UITableViewDelegate
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let country: Country
    
    if isSearch() {
      country = filteredCountries[indexPath.row]
      dismissViewControllerAnimated(true, completion: nil)
    } else {
      let key = countryKeys[indexPath.section]
      country = countries[key]![indexPath.row]
    }
    
    (self.presentingViewController as! ViewController).country = country
    dismissViewControllerAnimated(true, completion: nil)
  }
}
