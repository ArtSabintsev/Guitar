Pod::Spec.new do |s|
  s.name             = 'Guitar'
  s.version          = '0.0.1'
  s.summary          = 'A Cross-Platform String Library Written in Swift.'

description      = <<-DESC
A Cross-Platform String Library Written in Swift.
                       DESC

  s.ios.deployment_target = '10.0'
  s.macos.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'

  s.homepage         = 'https://github.com/ArtSabintsev/Guitar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Arthur Ariel Sabintsev' => 'arthur@sabintsev.com' }
  s.source           = { :git => 'https://github.com/ArtSabintsev/Guitar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/artsabintsev'

  s.source_files = 'Guitar/*'

end
