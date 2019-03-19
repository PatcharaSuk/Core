Pod::Spec.new do |s|

  s.name         = "Core"
  s.version      = "0.0.1"
  s.summary      = "Core is utility for project"
  s.homepage     = "https://github.com/PatcharaSuk"

  s.author             = { "Patchara Suksiri" => "patchara.suksiri@gmail.com" }

  s.source       = { :git => "https://github.com/PatcharaSuk/Core.git", :tag => "#{s.version}" }

  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.14'

  s.framework  = "UIKit"
  s.requires_arc = true
  
  s.source_files = 'Core/Source/*.swift'

end
