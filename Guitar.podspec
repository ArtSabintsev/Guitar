Pod::Spec.new do |s|
  # Version
  s.version         = '1.0.0'
  s.swift_version   = '5.0'

  # Meta
  s.name             = 'Guitar'
  s.summary          = 'A Cross-Platform String and Regular Expression Library Written in Swift.'
  s.homepage         = 'https://github.com/ArtSabintsev/Guitar'
  s.social_media_url = 'https://twitter.com/artsabintsev'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Arthur Ariel Sabintsev' => 'arthur@sabintsev.com' }
  s.description      = <<-DESC
                        A Cross-Platform String and Regular Expression Library written in Swift.
                       DESC

  # Deployment Targets
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'

  # Sources
  s.source           = { :git => 'https://github.com/ArtSabintsev/Guitar.git', :tag => s.version.to_s }

  s.framework = 'Foundation'
  s.source_files = 'Sources/*.swift'

end
