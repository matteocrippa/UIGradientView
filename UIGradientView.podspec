Pod::Spec.new do |s|
s.name             = 'UIGradientView'
s.version          = '0.2.0'
s.summary          = 'An UIView that support gradients.'

s.description      = <<-DESC
Easily set a gradient over an uiview using UIGradientView and directly from your Storyboard.
DESC

s.homepage         = 'https://github.com/matteocrippa/UIGradientView'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Matteo Crippa' => '' }
s.source           = { :git => 'https://github.com/matteocrippa/UIGradientView.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/ghego20'

s.ios.deployment_target = '9.0'
s.tvos.deployment_target = '9.0'

s.source_files = 'UIGradientView/Classes/**/*'

end
