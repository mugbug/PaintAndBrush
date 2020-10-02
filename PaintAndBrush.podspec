#
#  Be sure to run `pod spec lint view-code-helper.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name = "PaintAndBrush"
  spec.version = "0.1.4"
  spec.license = "MIT"
  spec.summary = "A package with some simple -- but useful -- helpers for building UIKit views in code."
  spec.homepage = "https://github.com/mugbug/PaintAndBrush"
  spec.author = { "Pedro Zaroni" => "zaronipedro@outlook.com" }
  
  spec.platform = :ios,
  spec.ios.deployment_target = "11.0"

  spec.swift_versions = ["5.1"]

  spec.source = { :git => "https://github.com/mugbug/PaintAndBrush.git", :tag => "v#{spec.version}" }
  spec.source_files = "Sources", "Sources/**/*.swift"
end
