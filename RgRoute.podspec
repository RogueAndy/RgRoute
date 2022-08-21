Pod::Spec.new do |s|

  s.name         = "RgRoute"
  s.version      = "0.0.2"
  s.summary      = "路由组件"
  s.description  = <<-DESC
                    关于路由组件
                   DESC

  s.homepage     = "https://rogueandy.github.io"
  s.license      = "MIT"
  s.author       = { "Rogue" => "619455850@qq.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/RogueAndy/RgRoute.git", :tag => "#{s.version}" }

  s.source_files  = "ScRoute/*"
  s.public_header_files = "ScRoute/*.h"

  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  s.dependency "CTMediator", "~> 46"
end
