Pod::Spec.new do |s|
  s.name             =  "SwiftyCardController"
  s.version          =  "0.2.0"
  s.summary          =  "A card stack container view controller"
  s.homepage         =  "https://github.com/asowers1/SwiftyCardController"
  s.license          =  "MIT"
  s.author           =  { "Andrew Sowers" => "asow123@gmail.com" }
  s.social_media_url =  "http://twitter.com/andrewsowers"
  s.platform         =  :ios, "8.0"
  s.source           =  { :git => "https://github.com/asowers1/SwiftyCardController.git", :commit => "master" }
  s.source_files     =  "SwiftyCardController/**/*.swift"
  s.requires_arc     =  true

  s.resource_bundles = {
    Cards: "SwiftyCardController/**/*.png"
  }

  s.dependency "pop"
end
