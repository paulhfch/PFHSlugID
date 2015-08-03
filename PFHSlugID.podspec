Pod::Spec.new do |s|
  s.name         = "PFHSlugID"
  s.version      = "1.0.0"
  s.summary      = "URL-safe base64 UUID encoder for generating 22 character slugs"
  s.description  = <<-DESC
                   A iOS static library for generating UUIDs and encode them in URL-safe base64 (See RFC 4648 sec. 5). The compressed UUIDs are always 22 characters on the following form [a-Z0-9_-]{22}. This is useful for small unique slugs.
                   DESC
  s.homepage     = "https://github.com/paulhfch/PFHSlugID"
  s.license      = "MIT"
  s.author             = { "Paul Fangchen Huang" => "paul.hfch@gmail.com" }
  s.platform     = :ios, "7.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/paulhfch/PFHSlugID.git", :tag => "1.0.0" }
  s.source_files  = "PFHSlugID", "PFHSlugID/**/*.{h,m}"
end
