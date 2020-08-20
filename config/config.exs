use Mix.Config

config :hello_world, HelloWorld.Scheduler, jobs: [
                                             {"* * * *", fn ->
                                             HelloWorld.FileReader.get_strings_to_tweet(
                                             Path.join("#{:code.priv_dir(:hello_world)}", "sample.txt")
                                             )
                                             |> HelloWorld.TweetServer.tweet
                                             end}
]
