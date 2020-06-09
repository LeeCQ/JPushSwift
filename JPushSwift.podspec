#
# Be sure to run `pod lib lint JPushSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JPushSwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of JPushSwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/LeeCQ'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李昌庆' => 'hx614614@163.com' }
  s.source           = { :git => 'https://github.com/LeeCQ/JPushSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'JPushSwift/Classes/**/*'
  
 s.subspec 'JPushSDK' do |ss|
      ss.source_files = "JpushSwift/JPushSDK/**.h"
      ss.public_header_files = "JpushSwift/JPushSDK/**.h"
    
    ss.frameworks = "CoreFoundation", "CFNetwork", "CoreTelephony", "SystemConfiguration","CoreGraphics", "Foundation" ,"UIKit", "Security","UserNotifications","WebKit"
      
      ss.libraries = "resolv","z"
      
      ss.vendored_libraries = "JpushSwift/JPushSDK/*.a"
  #    表示依赖第三方/自己的 .a 库
      #依赖的第三方的或者自己的静态库文件必须以lib为前缀进行命名，否则会出现找不到的情况，这一点非常重要
      
      ss.pod_target_xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/JpushSwift/JPushSDK' }
    end
end
