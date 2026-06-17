 cask "hermes-agent" do
   version "0.16.0"
   sha256 "b61e047efe3059faf1c55fec3252e661f2d2a993a7a3eebf5cc6a9aa5c1790f5"
 
   url "https://hermes-assets.nousresearch.com/Hermes-Setup.dmg"
   name "Hermes Agent"
   desc "Self-improving AI agent desktop app by Nous Research"
   homepage "https://hermes-agent.nousresearch.com"
 
   livecheck do
     url "https://api.github.com/repos/NousResearch/hermes-agent/releases/latest"
     strategy :json do |json|
       body = json["body"]
       match = body&.match(/Hermes Agent v([\d.]+)/)
       match[1] if match
     end
   end
 
   depends_on macos: ">= :big_sur"
 
   app "Hermes.app"
 
   caveats <<~EOS
     Hermes Agent uses a setup-based installer. After installation,
     open Hermes.app once to complete setup and install the core agent.
 
     The app currently requires an internet connection for first-run setup
     and for core functionality including model access and agent orchestration.
   EOS
 
   zap trash: [
     "~/Library/Application Support/Hermes",
     "~/Library/Caches/com.nousresearch.hermes.setup",
     "~/Library/Preferences/com.nousresearch.hermes.setup.plist",
     "~/Library/Saved Application State/com.nousresearch.hermes.setup.savedState",
     "~/Library/Logs/Hermes",
   ]
 end
