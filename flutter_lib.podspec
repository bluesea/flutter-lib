#
# Be sure to run `pod lib lint flutter_lib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_lib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of flutter-lib.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/cjl_spy@163.com/flutter-lib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cjl_spy@163.com' => 'cjl_spy@163.com' }
  s.source           = { :git => 'https://github.com/cjl_spy@163.com/flutter-lib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.static_framework = true
  # s.source_files = 'flutter-lib/Classes/**/*'
  p = Dir::open("ios_frameworks")
  arr = Array.new
  p.each do |f|
    if f == '.' || f == '..'
    else
        arr.push('ios_frameworks/'+f)
    end
  end

  s.ios.vendored_frameworks = arr
end