require File.expand_path("lib/google/apis/artifactregistry_v1/gem_version", __dir__)

Gem::Specification.new do |gem|
  gem.name = "google-apis-artifactregistry_v1"
  gem.version = Google::Apis::ArtifactregistryV1::GEM_VERSION
  gem.authors = ["Google LLC"]
  gem.email = "googleapis-packages@google.com"
  gem.summary = "Simple REST client for Artifact Registry API V1"
  gem.description =
      "This is the simple REST client for Artifact Registry API V1." \
      " Simple REST clients are Ruby client libraries that provide access to" \
      " Google services via their HTTP REST API endpoints. These libraries are" \
      " generated and updated automatically based on the discovery documents" \
      " published by the service, and they handle most concerns such as" \
      " authentication, pagination, retry, timeouts, and logging. You can use" \
      " this client to access the Artifact Registry API, but note that some" \
      " services may provide a separate modern client that is easier to use."
  gem.homepage = "https://github.com/google/google-api-ruby-client"
  gem.license = "Apache-2.0"
  gem.metadata = {
    "bug_tracker_uri" => "https://github.com/googleapis/google-api-ruby-client/issues",
    "changelog_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/master/generated/google-apis-artifactregistry_v1/CHANGELOG.md",
    "documentation_uri" => "https://googleapis.dev/ruby/google-apis-artifactregistry_v1/v#{Google::Apis::ArtifactregistryV1::GEM_VERSION}",
    "source_code_uri" => "https://github.com/googleapis/google-api-ruby-client/tree/master/generated/google-apis-artifactregistry_v1"
  }

  gem.files = Dir.glob("lib/**/*.rb") + Dir.glob("*.md") + [".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 2.5'
  gem.add_runtime_dependency "google-apis-core", ">= 0.4", "< 2.a"
end
