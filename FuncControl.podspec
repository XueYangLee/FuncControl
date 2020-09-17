#
#  Be sure to run `pod spec lint FuncControl.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "FuncControl"
  spec.version      = "1.0.0"
  spec.summary      = "基础控件函数式写法，简化代码"
  spec.homepage     = "https://github.com/XueYangLee/FuncControl"
  spec.license      = "MIT"
  spec.author       = { "Singularity_Lee" => "496736912@qq.com" }
  spec.ios.deployment_target = "8.0"
  spec.source       = { :git => "https://github.com/XueYangLee/FuncControl.git", :tag => "#{spec.version}" }
  spec.source_files  = "FuncControl/FuncChains/*.{h,m}"
  spec.public_header_files = 'FuncControl/FuncChains/*.{h}'
  spec.requires_arc = true

end
