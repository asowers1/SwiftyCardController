platform :ios, "8.0"
use_frameworks!

target "SwiftyCardController" do
  project "SwiftyCardController.xcodeproj"
  pod "pop"
end

target "SwiftyCardControllerTests" do
  project "SwiftyCardController.xcodeproj"
  pod "Quick"
  pod "Nimble"
end

target "Example" do
  project "Example/Example.xcodeproj"
  workspace "SwiftyCardController.xcworkspace"
  pod "SwiftyCardController", path: "./"
end

