class Gitviz < Formula
    desc "Visualize your local Git contributions like GitHub"
    homepage "https://github.com/anton-fuji/gitviz"
    url "https://github.com/anton-fuji/gitviz/archive/refs/tags/v0.1.3.tar.gz" 
    sha256 "b681126153b858aaef0ff2dd343467c2cbb463530f89377110ce9eef7645c73c"
  
    license "MIT"
  
    depends_on "go" => :build
  
    def install
        system "go", "build", "-ldflags", "-s -w", "-o", bin/"gitviz", "."
    end
  
    test do
      system "true"
    end
  end
