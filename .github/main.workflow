workflow "Update gist with WakaTime stats" {
  resolves = ["update-gist"]
  on = "schedule(*/10 * * * *)"
}

action "update-gist" {
  uses = "matchai/waka-box@master"
  secrets = [
    "GH_TOKEN",
    "WAKATIME_API_KEY",
  ]
  env = {
    GIST_ID = "f1f0a9c7b30066d40553c3e7fb1a2be8"
  }
}
