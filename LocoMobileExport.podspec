#
# Be sure to run `pod lib lint LocoMobileExport.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LocoMobileExport'
  s.version          = '0.1.8'
  s.summary          = 'An exporter script for Localise.biz projects for iOS and Android projects'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An exporter script for Localise.biz projects for iOS and Android projects
                       DESC

  s.homepage         = 'https://github.com/mineschan/LocoMobileExport'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MineS Chan' => 'mineschan@gmail.com' }
  # s.source           = { :git => 'https://github.com/mineschan/LocoMobileExport.git', :branch => 'master' }
  s.source           = { http: "https://github.com/mineschan/LocoMobileExport/releases/download/#{s.version}/LocoMobileExport-#{s.version}.zip" }
  s.preserve_paths   = '*'
  s.exclude_files    = '**/file.zip'

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'Sources/*.{sh}'
  # s.resource_bundles = {
  # }
  # s.resource_bundles = {
  #   'LocoMobileExport' => ['LocoMobileExport/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
