Pod::Spec.new do |s|
  s.name         = "FingerTracks"
  s.version      = "1.0.0"
  s.summary      = "An easy to use set of classes to ad touch feedback to your applications."
  s.homepage     = "http://github.com/megaplow/FingerTracks"
  s.license      = 'BSD'
  s.author       = { "Joe Andolina" => "joe.andolina@gmail.com" }
  s.source       = { :git => "https://github.com/megaplow/FingerTracks.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.source_files = 'FingerTracks/FingerTracks/*.{h,m}'
  s.requires_arc = true
end
