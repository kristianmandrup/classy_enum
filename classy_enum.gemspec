# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{classy_enum}
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Brown"]
  s.date = %q{2010-10-19}
  s.description = %q{A utility that adds class based enum functionaltiy to ActiveRecord attributes}
  s.email = %q{github@lette.us}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "classy_enum.gemspec",
     "generators/classy_enum_generator.rb",
     "generators/templates/enum.erb",
     "init.rb",
     "lib/classy_enum.rb",
     "lib/classy_enum/classy_enum_attributes.rb",
     "lib/classy_enum/classy_enum_formtastic_input.rb",
     "lib/generators/classy_enum/classy_enum_generator.rb",
     "lib/generators/classy_enum/templates/enum.erb",
     "spec/classy_enum_attributes_spec.rb",
     "spec/classy_enum_formtastic_input_spec.rb",
     "spec/classy_enum_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/beerlington/classy_enum}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A class based enumerator utility for Ruby on Rails}
  s.test_files = [
    "spec/classy_enum_attributes_spec.rb",
     "spec/classy_enum_formtastic_input_spec.rb",
     "spec/classy_enum_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.0"])
    s.add_dependency(%q<activerecord>, ["~> 3.0"])
  end
end

