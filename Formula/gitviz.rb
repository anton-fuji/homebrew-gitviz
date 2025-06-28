class Gitviz < Formula
    desc "Visualize your local Git contributions like GitHub"
    homepage "https://github.com/anton-fuji/gitviz"
    url "https://github.com/anton-fuji/gitviz/archive/refs/tags/v0.1.1.tar.gz" 
    sha256 "a28b8a0a39871551ad835cb69968fe6634ef83d0e0b153730e92534cfeb41162"
  
    license "MIT"
  
    depends_on "go" => :build
  
    def install
        system "go", "build", "-ldflags", "-s -w", "-o", bin/"gitviz", "."
    end
  
    test do
      system "true"
    end
  end
