class DcWalrus < Formula
  desc "Dcycle command line interface"
  homepage "https://github.com/Dcycle-by-WUM/dcycle-backend-app"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Dcycle-by-WUM/dcycle-backend-app/releases/download/dc-go/v0.1.0/dc-walrus_0.1.0_darwin_arm64.tar.gz"
      sha256 "95004286fa32202f66a2261f1a23bcda765aa86e4bb4103063f937fcf304b46a"
    end

    on_intel do
      url "https://github.com/Dcycle-by-WUM/dcycle-backend-app/releases/download/dc-go/v0.1.0/dc-walrus_0.1.0_darwin_amd64.tar.gz"
      sha256 "88a1cb76b3c58074ec3c7d8c56d88649598cd76fa9ef8aca71140be83f3440e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dcycle-by-WUM/dcycle-backend-app/releases/download/dc-go/v0.1.0/dc-walrus_0.1.0_linux_arm64.tar.gz"
      sha256 "400fb008334d14fc5be262ef6522cb17088d067f584e0f3c3b26f4e93c1cf328"
    end

    on_intel do
      url "https://github.com/Dcycle-by-WUM/dcycle-backend-app/releases/download/dc-go/v0.1.0/dc-walrus_0.1.0_linux_amd64.tar.gz"
      sha256 "1de04f6b873f481d360d7370ec2dd6bbc17d6448f9154badd06cbd220f93db22"
    end
  end

  def install
    bin.install "dc-walrus"
  end

  test do
    output = shell_output("#{bin}/dc-walrus version")
    assert_match "dc-walrus version", output
  end
end
