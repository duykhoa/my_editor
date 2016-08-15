$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'my_editor/version'

Gem::Specification.new do |s|
  s.name        = 'my_editor'
  s.version     = MyEditor::VERSION
  s.licenses    = ['MIT']
  s.summary     = "ed editor in ruby"
  s.description = "Re-implement ed editor on ruby"
  s.authors     = ["Duy Khoa (Kevin Tran)"]
  s.email       = 'duykhoa12t@gmail.com'
  s.homepage    = 'https://github.com/duykhoa/my_editor'

  s.files       = Dir["lib/**/*", "bin/*", "README.md"]
  s.require_paths = ["lib"]
  s.bindir = "bin"
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "bundler"
  s.add_development_dependency "minitest"
  s.add_development_dependency "byebug"
end
