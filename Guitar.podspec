Pod::Spec.new do |s|
  s.name             = 'Guitar'
  s.version          = '0.0.1'
  s.summary          = 'A Cross-Platform String Library Written in Swift.'

description      = <<-DESC
A Cross-Platform String Library Written in Swift.
                       DESC

  platform :ios, '10.0'
  platform :macos, '10.12'
  platform :tvos, '10.0'
  platform :watchos, '3.0'

  s.homepage         = 'https://github.com/ArtSabintsev/Guitar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Arthur Ariel Sabintsev' => 'arthur@sabintsev.com' }
  s.source           = { :git => 'https://github.com/ArtSabintsev/Guitar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/artsabintsev'

  s.source_files = 'Guitar/**/*'

end
