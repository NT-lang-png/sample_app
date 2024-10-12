# Sample App for Learning Byebug  
デバッグ講義用サンプルアプリ  
  
## インストールと起動  
1. zipファイルをダウンロードする  
2. zipファイルをCloud9上にドラッグ＆ドロップする  
3. 以下のコードをターミナルに入力してZipファイルを解凍する  
    ```
    unzip sample_app_byebug.zip
    cd sample_app_byebug
    ```

4. 下記のコードを入力して、アプリケーションを起動できるようにします。  
    ```
    $ bundle install
    $ yarn install
    $ rails db:migrate
    ```
5. `config/environments/development.rb`にご自身のホスト設定を追記してください。  

    ```ruby
    require "active_support/core_ext/integer/time"
    
    Rails.application.configure do
      :
      :
      config.hosts << "xxxx.vfs.cloud9.ap-northeast-1.amazonaws.com"
    end
    ```

6. `rails s`を実行して、下記のページが表示されたら完了です。  
![Top Page](/sample_app_byebug/readme.png)
