Pod::Spec.new do |s|

  s.name         = "Core"
  s.version      = "0.0.1"
  s.summary      = "A short description of Core."
  s.homepage     = "https://github.com/PatcharaSuk"
  s.license      = "PatcharaSuk"
  s.author             = { "Patchara Suksiri" => "patchara.suksiri@gmail.com" }
  s.source       = { :git => "https://github.com/PatcharaSuk/Core.git", :tag => "#{s.version}" }

  s.framework  = "UIKit"
  s.requires_arc = true

  s.subspec 'All' do |ss|
    ss.ios.dependency "Core/Core"
  end

  s.subspec 'Core' do |ss|
    sub.source_files = 'Core/Source/**'
  end

end
