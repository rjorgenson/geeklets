# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{geeklets}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John F. Schank III"]
  s.date = %q{2010-03-28}
  s.default_executable = %q{geeklets}
  s.description = %q{A collection of useful scripts for use with GeekTool}
  s.email = %q{jschank@mac.com}
  s.executables = ["geeklets"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "History.txt",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/geeklets",
     "lib/Get_Weather_Icon/get_weather_icon.rb",
     "lib/Next_Months_Calendar/next_months_calendar.rb",
     "lib/OPM_Alerts/opm_alerts.rb",
     "lib/Trash_Usage/trash_usage.rb",
     "lib/VRE_Alerts/vre_alerts.rb",
     "lib/WMATA_Alerts/wmata_alerts.rb",
     "lib/Weather/weather.rb",
     "lib/geeklets.rb",
     "lib/utility.rb",
     "spec/geeklets_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/utility_spec.rb",
     "vendor/trollop.rb"
  ]
  s.homepage = %q{http://github.com/jschank/geeklets}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Scripts for GeekTool}
  s.test_files = [
    "spec/geeklets_spec.rb",
     "spec/spec_helper.rb",
     "spec/utility_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

