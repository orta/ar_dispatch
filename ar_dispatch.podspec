Pod::Spec.new do |s|
  s.name             = "ar_dispatch"
  s.version          = "1.0.0"
  s.summary          = "Dispatch functions run async code synchronous in tests"
  s.description      = <<-DESC
                        Custom versions of the Foundation dispach_xxx functions that will run syncronously in your tests.
                        DESC
  s.homepage         = "https://github.com/orta/ar_dispatch"
  s.license          = 'MIT'
  s.author           = { "Orta Therox" => "orta.therox@gmail.com" }
  s.source           = { :git => "https://github.com/orta/ar_dispatch.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/orta'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.frameworks = ['Foundation']
end
