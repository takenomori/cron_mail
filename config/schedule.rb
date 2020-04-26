# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

env :PATH, ENV['PATH'] # 絶対パスから相対パス指定
set :output, 'log/cron.log' # ログの出力先ファイルを設定
set :environment, :development # 環境を設定


every 1.minutes do
  rake 'mail:sample'
end
=begin
  class Tasks::Marimotask
  def self.marimo
   #modelやlibのメソッド呼んだり
    Marimodel.hoge
    Malib::Marimo.nyanya 
    #適当な処理書いたり
    foo
    #putsしてみたり
    puts "成功しました！"
  end
end
=end
# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
