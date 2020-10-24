Pod::Spec.new do |spec|
  spec.name         = 'ScreenCorners'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/kylebshr/ScreenCorners'
  spec.authors      = { 'Kyle Bashour' => 'kylebshr@me.com' }
  spec.summary      = 'Screen corner radius for iOS devices.'
  spec.source       = { :git => 'https://github.com/kylebshr/ScreenCorners.git', :tag => 'v1.0.0' }
  
  spec.swift_version = '5.1'
  spec.ios.deployment_target = '12.1'

  spec.source_files = 'Sources/ScreenCorners/*.swift'
  spec.ios.framework = 'UIKit'
end
