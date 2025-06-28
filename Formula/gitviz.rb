class Gitviz < Formula
    desc "Visualize your local Git contributions like GitHub"
    homepage "https://github.com/anton-fuji/gitviz"
    url "https://github.com/anton-fuji/gitviz/archive/refs/tags/v0.1.0.tar.gz" 
    sha256 "b8696d9d9e0e29e9cc4fcb73d779ecf6ace74a0b730b74959fba798872f3e1de"
  
    license "MIT"
  
    depends_on "go" => :build
  
    def install
        system "go", "build", *std_go_args(ldflags: "-s -w")

        bin.install "gitviz"
    end
  
    test do
      system "true"
    end
  end