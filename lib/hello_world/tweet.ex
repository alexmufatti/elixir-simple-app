defmodule HelloWorld.Tweet do
  def send(str) do
    ExTwitter.configure(
      consumer_key: String.replace(System.get_env("HELLOWORLD_TWITTER_CONSUMER_KEY"),"\r",""),
      consumer_secret: String.replace(System.get_env("HELLOWORLD_TWITTER_CONSUMER_SECRET"),"\r",""),
      access_token: String.replace(System.get_env("HELLOWORLD_TWITTER_ACCESS_KEY"),"\r",""),
      access_token_secret: String.replace(System.get_env("HELLOWORLD_TWITTER_ACCESS_SECRET"),"\r","")
    )

    ExTwitter.update(str)
  end
  def search(str) do

    ExTwitter.configure(
      consumer_key: String.replace(System.get_env("HELLOWORLD_TWITTER_CONSUMER_KEY"),"\r",""),
      consumer_secret: String.replace(System.get_env("HELLOWORLD_TWITTER_CONSUMER_SECRET"),"\r",""),
      access_token: String.replace(System.get_env("HELLOWORLD_TWITTER_ACCESS_KEY"),"\r",""),
      access_token_secret: String.replace(System.get_env("HELLOWORLD_TWITTER_ACCESS_SECRET"),"\r","")
    )
    ExTwitter.search(str)
  end

end
