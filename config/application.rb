require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ComfortableTrip
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # generatorsコマンド時の自動生成を防ぎたいファイルを以下に記載
    config.generators do |g|
      # css,jsのファイルは作成せず
      g.assets false
      # コントローラー作成時にconfig/routes.rbが書き換えられないようにする。
      g.skip_routes true
      # テストファイルは作成せず
      g.test_framework false
      # ヘルパーファイルも作成せず
      g.helper false
    end

    # TimeWithZoneオブジェクトにする際にTokyoのオブジェクトにする。
    config.time_zone = 'Tokyo'
    # DBに保存する時間もJSTにする。
    config.active_record.default_timezone = :local

    # デフォルト言語を日本語に設定
    config.i18n.default_locale = :ja
    # config/locales以下のどの階層のディレクトリも読み込みができるように記載。
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
