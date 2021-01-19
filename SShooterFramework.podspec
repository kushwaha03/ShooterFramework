Pod::Spec.new do |spec|

  spec.name         = 'SShooterFramework'
  spec.version      = '1.0.0'
  spec.summary      = 'A SShooterFramework for gamers lovers'
  spec.description      = <<-DESC
                        blah blah blah
                       DESC
                       
  spec.homepage     = 'https://github.com/'
  spec.license     = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'krishna' => 'kushwahakrishna03@gmail.com' }

  spec.source       = { :git => 'https://github.com/kushwaha03/ShooterFramework.git', :tag => '1.0.0' }

  spec.ios.deployment_target = '11.0'

  spec.subspec 'SpaceShooter' do |c|
    c.vendored_frameworks = 'spaceshooter/ERPSDKCompleteWithAnalytics.framework'
  end
  
    spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
