Gem::Specification.new do |s|
  s.name = %q{chrome-extension-starter}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["hotchpotch"]
  s.autorequire = %q{}
  s.date = %q{2009-09-24}
  s.default_executable = %q{chrome-extension-starter}
  s.description = %q{}
  s.email = %q{hotchpotch@gmail.com}
  s.executables = ["chrome-extension-starter"]
  s.extra_rdoc_files = ["README.rdoc", "ChangeLog"]
  s.files = ["README.rdoc", "ChangeLog", "Rakefile", "bin/chrome-extension-starter", "test/chrome-extension-starter_test.rb", "test/test_helper.rb", "lib/chrome_extension_starter.rb", "lib/chrome", "lib/chrome/extension", "templates/src", "templates/src/lib", "templates/src/lib/utils.js", "templates/src/toolstrips", "templates/src/toolstrips/toolstrip.html", "templates/src/toolstrips/toolstrip.js", "templates/src/background", "templates/src/background/background.html", "templates/src/background/background.js", "templates/src/manifest.json", "templates/Rakefile"]
  s.homepage = %q{http://chromeextensionstarter.rubyforge.org}
  s.rdoc_options = ["--title", "chrome-extension-starter documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README.rdoc", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{chromeextensionstarter}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{}
  s.test_files = ["test/chrome-extension-starter_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<zipruby>, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 2.0.0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<zipruby>, [">= 0"])
      s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<zipruby>, [">= 0"])
    s.add_dependency(%q<uuidtools>, [">= 2.0.0"])
  end
end
