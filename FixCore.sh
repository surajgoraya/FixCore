# -------------------------
# FixCore (2021-07-24)
# @surajgoraya
# 
# Kills the CoreAudio service on macOS to get it try
# and reboot itself. It usually fixes issues I have
# with macOS seemingly forever *trying* to connect
# to my AirPods. 
#
# Use at your own risk.
# -------------------------

echo "FixCore"
echo "-------"
echo "Attempting to kill CoreAudio..."

sudo launchctl kickstart -kp system/com.apple.audio.coreaudiod
echo "\n✅ Killed CoreAudio, it should reboot automatically."