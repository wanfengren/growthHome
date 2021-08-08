wiki_options = {
  :plantuml_url  => "http://0.0.0.0:8080/plantuml/png"
}
Gollum::Filter::PlantUML.configure do |config|
    config.url = "http://0.0.0.0:8080/plantuml/png"
    config.verify_ssl = false
end