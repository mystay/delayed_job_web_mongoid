Gem::Specification.new do |gem|
  gem.name        = "delayed_job_web_mongoid"
  gem.version     = "1.0.0"
  gem.author      = "Ben Petro"
  gem.email       = "benpetro@gmail.com"
  gem.homepage    = "https://github.com/benpetro/delayed_job_web_mongoid"
  gem.summary     = "Web interface for delayed_job inspired by resque, modified for Mongoid"
  gem.description = gem.summary
  gem.license     = "MIT"

  gem.executables = ["delayed_job_web_mongoid"]

  gem.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.markdown",
    "Rakefile",
    "delayed_job_web_mongoid.gemspec"
  ] + %x{ git ls-files }.split("\n").select { |d| d =~ %r{^(lib|test|bin)} }

  gem.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown"
  ]

  gem.add_runtime_dependency "sinatra",      [">= 1.4.4"]
  gem.add_runtime_dependency "mongoid", ["> 4.0.0"]
  gem.add_runtime_dependency "delayed_job",  ["> 2.0.3"]

  gem.add_development_dependency "minitest",  ["~> 4.2"]
  gem.add_development_dependency "rack-test", ["~> 0.6"]
  gem.add_development_dependency "rails",     ["~> 4.0"]
end
