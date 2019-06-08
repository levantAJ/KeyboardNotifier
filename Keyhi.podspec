Pod::Spec.new do |s|
  s.name = 'Keyhi'
  s.version = '1.0'
  s.summary = 'Keyhi manages Keyboard will/did show/hide'
  s.description = <<-DESC
  Keyhi written on Swift 4.2 by levantAJ
                       DESC
  s.homepage = 'https://github.com/levantAJ/Keyhi'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'Tai Le' => 'sirlevantai@gmail.com' }
  s.source = { :git => 'https://github.com/levantAJ/Keyhi.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'
  s.source_files = 'Keyhi/**/*.{swift}'
  s.resources = "Keyhi/**/*.{storyboard,xib,json,xcassets,lproj}"
  
end