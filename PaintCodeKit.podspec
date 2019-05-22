#
# Be sure to run `pod lib lint PaintCodeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.platform = :ios
  s.ios.deployment_target = '10.0'
  s.name              = 'PaintCodeKit'
  s.summary           = 'PaintCode turn your images into Swift code, PaintCodeKit helps you to add them in your views!'
  s.description       = 'PaintCodeKit manage your converted images in PaintCode. You will be able to use your images directly in the views using extensions with correct sizes. Use it to maintain your code clean! '
  s.version           = '1.0.0'
  
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.author            = { 'Alberto Aznar' => 'info@alberdev.com' }
  s.homepage          = 'https://github.com/alberdev/PaintCodeKit'
  s.social_media_url  = 'https://twitter.com/alberdev'
  
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.source            = { :git => 'https://github.com/alberdev/PaintCodeKit.git', :tag => s.version.to_s }
  
  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.framework         = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.source_files      = 'PaintCodeKit/**/*'
  
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  # s.resources         = 'PaintCodeKit/Resources/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}'
  
  # ――― Swift Version ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.swift_version     = '5.0'
  
end
