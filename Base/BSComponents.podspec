#
# Be sure to run `pod lib lint BSComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BSComponents'
  s.version          = '0.1.0'
  s.summary          = 'iOS基础组件库'



  s.description      = <<-DESC
			iOS基础组件库11
                       DESC

  s.homepage         = 'https://github.com/wangsong54088/IOSBsComponents'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '2238007273@qq.com' => 'jim@ak.com' }
  s.source           = { :git => 'https://github.com/wangsong54088/IOSBsComponents.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BSComponents/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BSComponents' => ['BSComponents/Assets/*.png']
  # }
  
  s.dependency 'AFNetworking'
  #s.dependency 'MBProgressHUD'
  #s.dependency 'Masonry'
  #s.dependency 'FMDB'
  #s.dependency 'MJRefresh'
  #s.dependency 'MJExtension'
  #s.dependency 'SDWebImage'
  # 崩溃兼容
  #s.dependency 'AvoidCrash'
  # 键盘
  #s.dependency 'IQKeyboardManager'
  # 消息提示
  #s.dependency 'SVProgressHUD'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
