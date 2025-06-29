class Gitviz < Formula
    desc "Visualize your local Git contributions like GitHub"
    homepage "https://github.com/anton-fuji/gitviz"
    url "https://github.com/anton-fuji/gitviz/archive/refs/tags/v0.1.2.tar.gz" 
    sha256 "4f74c8fb5d6b2af7d4fc8086de02d558cc066f67fb722be1b23d71fdf0dc2c5b"
  
    license "MIT"
  
    depends_on "go" => :build
  
    def install
        system "go", "build", "-ldflags", "-s -w", "-o", bin/"gitviz", "."
    end
  
    test do
      system "true"
    end
  end
