Gem::Specification.new do |s|
  s.name     = "contact_csv"
  s.version  = "0.2.0"
  s.date     = "2008-11-17"
  s.summary  = "Simple library to read in CSV files that you export from clients like Outlook or GMail"
  s.email    = "mwhuss@gmail.com"
  s.homepage = "http://github.com/mwhuss/contact_csv"
  s.description = "Simple library to read in CSV files that you export from clients like Outlook or GMail"
  s.has_rdoc = true
  s.authors  = ["Marshall Huss"]
  s.files    = [
    "History.txt",
    "License.txt",
    "Manifest.txt",
    "README.txt",
    "Rakefile",
    "config/hoe.rb",
    "config/requirements.rb",
    "lib/contact_csv.rb",
    "lib/contact_csv/contact.rb",
    "lib/contact_csv/contact_csv.rb",
    "lib/contact_csv/contact_manager.rb",
    "lib/contact_csv/lookup_tables/lookup_table.rb",
    "lib/contact_csv/lookup_tables/outlook_csv.rb",
    "lib/contact_csv/lookup_tables/outlook_doc_csv.rb",
    "lib/contact_csv/version.rb",
    "script/destroy",
    "script/generate",
    "script/txt2html",
    "setup.rb",
    "website/index.html",
    "website/index.txt",
    "website/javascripts/rounded_corners_lite.inc.js",
    "website/stylesheets/screen.css",
    "website/template.rhtml"]
  s.test_files = [
    "tasks/deployment.rake",
    "tasks/environment.rake",
    "tasks/website.rake",
    "test/outlook_contacts.csv",
    "test/outlook_contacts_dos.csv",
    "test/test_contact.rb",
    "test/test_contact_manager.rb",
    "test/test_helper.rb",
    "test/test_lookup_table.rb"]
  s.rdoc_options = ["--main", "README.txt"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.add_dependency("fastercsv", ["> 0.0.0"])
end
